uniform vec4 uDiffuseColor;
uniform vec4 uAmbientColor;
uniform vec3 uSpecularColor;
uniform float uShininess;
uniform float uShadowStrength;
uniform vec3 uShadowColor;

uniform int numGroups = 1;
uniform vec3 globalCenter;
uniform sampler2D sGroupLocalMap;
uniform sampler2D sGroupGlobalMap;

in float groupRatio;
in vec3 primCenter;
in int primIndex;

// For UV Unwrapping, we pass the coordinate through.
out vec3 ioUVUnwrapCoord;
out Vertex
{
	vec4 color;
	vec3 worldSpacePos;
	vec3 worldSpaceNorm;
	vec2 texCoord0;
	flat int cameraIndex;
} oVert;

const float PI = 3.141592653589793;
const float DEG_TO_RAD = PI / 180.0;
const float FRACTION_TO_RAD = DEG_TO_RAD * 360.0;

vec3 getLocalRotate() {
	return texture(sGroupLocalMap, vec2(groupRatio, 1.0)).rgb;
}

vec3 getLocalTranslate() {
	return texture(sGroupLocalMap, vec2(groupRatio, 0.5)).rgb;
}

vec3 getLocalScale() {
	return texture(sGroupLocalMap, vec2(groupRatio, 0.0)).rgb;
}

vec3 getGlobalRotate() {
	return texture(sGroupGlobalMap, vec2(groupRatio, 1.0)).rgb;
}

vec3 getGlobalTranslate() {
	return texture(sGroupGlobalMap, vec2(groupRatio, 0.5)).rgb;
}

vec3 getGlobalScale() {
	return texture(sGroupGlobalMap, vec2(groupRatio, 0.0)).rgb;
}

vec4 applyScale(vec4 val, vec3 s, vec3 p) {
	val.xyz -= p;
	mat4 scaleMatrix = mat4(
		s.x, 0.0, 0.0, 0.0,
		0.0, s.y, 0.0, 0.0,
		0.0, 0.0, s.z, 0.0,
		0.0, 0.0, 0.0, 1.0
	);
	val *= scaleMatrix;
	val.xyz += p;
	return val;
}
mat3 rotateX(float rad) {
    float c = cos(rad);
    float s = sin(rad);
    return mat3(
        1.0, 0.0, 0.0,
        0.0, c, s,
        0.0, -s, c
    );
}
mat3 rotateY(float rad) {
    float c = cos(rad);
    float s = sin(rad);
    return mat3(
        c, 0.0, -s,
        0.0, 1.0, 0.0,
        s, 0.0, c
    );
}
mat3 rotateZ(float rad) {
    float c = cos(rad);
    float s = sin(rad);
    return mat3(
        c, s, 0.0,
        -s, c, 0.0,
        0.0, 0.0, 1.0
    );
}

vec4 applyRotation(vec4 val, vec3 r, vec3 p) {
	val.xyz -= p;
	val.xyz *= rotateX(r.x);
	val.xyz *= rotateY(r.y);
	val.xyz *= rotateZ(r.z);
	val.xyz += p;
	return val;
}

vec4 applyTranslate(vec4 val, vec3 t) {
	val.xyz += t;
	return val;
}

//vec4 applyTransform(vec4 val, vec3 s, vec3 r, vec3 t, vec3 p) {
//	val.xyz -= p;
//
//	mat4 scaleMatrix = mat4(
//		s.x, 0.0, 0.0, 0.0,
//		0.0, s.y, 0.0, 0.0,
//		0.0, 0.0, s.z, 0.0,
//		0.0, 0.0, 0.0, 1.0
//	);
//	mat4 rotateMatrix;
//	mat4 translateMatrix = mat4(
//		1.0, 0.0, 0.0, t.x,
//		0.0, 1.0, 0.0, t.y,
//		0.0, 0.0, 1.0, t.z,
//		0.0, 0.0, 0.0, 1.0
//	);
//
//	return translateMatrix * rotateMatrix * scaleMatrix * val;
//}

vec4 doLocalTransform(vec4 pos) {
	vec3 r = getLocalRotate() * FRACTION_TO_RAD;
	vec3 t = getLocalTranslate();
	vec3 s = getLocalScale();
	vec3 p = primCenter;
	pos = applyRotation(pos, r, p);
	pos = applyScale(pos, s, p);
	pos = applyTranslate(pos, t);
	return pos;
}

vec4 doGlobalTransform(vec4 pos) {
	vec3 r = getGlobalRotate() * FRACTION_TO_RAD;
	vec3 t = getGlobalTranslate();
	vec3 s = getGlobalScale();
	vec3 p = globalCenter;
	pos = applyRotation(pos, r, p);
	pos = applyScale(pos, s, p);
	pos = applyTranslate(pos, t);
	return pos;
}

void main()
{

	{ // Avoid duplicate variable defs
		vec3 texcoord = TDInstanceTexCoord(uv[0]);
		oVert.texCoord0.st = texcoord.st;
	}
	// First deform the vertex and normal
	// TDDeform always returns values in world space
	vec4 worldSpacePos =TDDeform(P);
	vec3 uvUnwrapCoord = TDInstanceTexCoord(TDUVUnwrapCoord());
	// Let the geometry shader do the conversion to projection space.

	//vec3 localTranslate = getLocalTranslate();
	//worldSpacePos.xyz += localTranslate;

	worldSpacePos = doLocalTransform(worldSpacePos);
	worldSpacePos = doGlobalTransform(worldSpacePos);

	gl_Position = worldSpacePos;
	ioUVUnwrapCoord = uvUnwrapCoord;


	// This is here to ensure we only execute lighting etc. code
	// when we need it. If picking is active we don't need lighting, so
	// this entire block of code will be ommited from the compile.
	// The TD_PICKING_ACTIVE define will be set automatically when
	// picking is active.
#ifndef TD_PICKING_ACTIVE

	int cameraIndex = TDCameraIndex();
	oVert.cameraIndex = cameraIndex;
	oVert.worldSpacePos.xyz = worldSpacePos.xyz;
	oVert.color = TDInstanceColor(Cd);
	vec3 worldSpaceNorm = normalize(TDDeformNorm(N));
	oVert.worldSpaceNorm.xyz = worldSpaceNorm;

#else // TD_PICKING_ACTIVE

	// This will automatically write out the nessessary values
	// for this shader to work with picking.
	// See the documentation if you want to write custom values for picking.
	TDWritePickingValues();

#endif // TD_PICKING_ACTIVE
}
