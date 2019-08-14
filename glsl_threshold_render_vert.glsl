uniform int maxpoints;
uniform vec4 uColor = vec4(1);

#ifdef TRIANGLE_MODE
#define SAMPLER_TYPE sampler3D
#else
#define SAMPLER_TYPE sampler2D
#endif

/*
	xyz: pt1.xyz
	w: point 1 index / maxpoints
		(i.e. the U position in the input data textures)
*/
uniform SAMPLER_TYPE sPointState1;

/*
	xyz: pt2.xyz
	w: point 2 index / maxpoints
		(i.e. the U position in the input data textures)
*/
uniform SAMPLER_TYPE sPointState2;

/*
	x: exists
	y: absolute distance (for triangles, this is the average of that of its edges)
	z: distance relative to range (same for this)
	w: (nothing)
*/
uniform SAMPLER_TYPE sAttrs;

uniform sampler2D sPointColors;

#ifdef TRIANGLE_MODE

/*
	xyz: pt3.xyz
	w: point 3 index / maxpoints
		(i.e. the U position in the input data textures)
*/
uniform SAMPLER_TYPE sPointState3;

in int vertNum; // comes in as 0 .. 2

#else

in float lineEnd; // comes in as -1 .. 1

#endif

out Vertex {
	vec4 color;
} oVert;

void main()
{
	int inst = TDInstanceID();
	#ifndef TRIANGLE_MODE
	ivec2 dataCoord = ivec2(
		inst / maxpoints,
		inst % maxpoints);
	#else
	int sheetSize = maxpoints * maxpoints;
	ivec3 dataCoord = ivec3(
		(inst % sheetSize) / maxpoints,
		(inst % sheetSize) % maxpoints,
		inst / sheetSize);
	#endif
	vec4 attrVals = texelFetch(sAttrs, dataCoord, 0);
	vec3 pos;
	if (!bool(attrVals.r) || !bool(attrVals.a)) {// || dataCoord.y <= dataCoord.x) {
		oVert.color = vec4(0);
		pos = vec3(0);



//		if (vertNum==0) { pos = vec3(-1, 1, 0); }
//			else if (vertNum==1) { pos = vec3(0, -1, 0);}
//			else if (vertNum==2) { pos = vec3(1, 1, 0); }
//			else {pos = vec3(-2, -2, -2); }
	} else {
		vec4 pointStateVals;
		#ifndef TRIANGLE_MODE
		vec4 pointState1 = texelFetch(sPointState1, dataCoord, 0);
		vec4 pointState2 = texelFetch(sPointState2, dataCoord, 0);
//		rotation *=  -lineEnd;
//		mat3 rotation = TDRotateToVector(
//			pointState2.xyz - pointState1.xyz,
//			vec3(0.0, 1.0, 0.0));
		float lineEndVal = lineEnd;
//		lineEndVal = (lineEndVal * 2) - 1;
//		lineEndVal = pow(lineEndVal, 0.2);
//		lineEndVal = (lineEndVal + 1) / 2.0;
		pointStateVals = mix(pointState1, pointState2, (lineEndVal + 1) / 2);
		pos = P;
//		pos.x += sign(lineEnd) * length(pointState1.xyz - pointState2.xyz);
		#ifdef MESH_MODE
		mat3 rotation = TDCreateRotMatrix(
			vec3(1.0, 0.0, 0.0),
			normalize(pointState2.xyz - pointState1.xyz) * lineEnd
		);
		pos *= rotation;
		pos += pointStateVals.xyz;
		#else
		pos = pointStateVals.xyz;
		#endif
		#else
		if (vertNum == 2) {
			pointStateVals = texelFetch(sPointState3, dataCoord, 0);
		} else if (vertNum == 1) {
			pointStateVals = texelFetch(sPointState2, dataCoord, 0);
		} else {
			pointStateVals = texelFetch(sPointState1, dataCoord, 0);
		}
//		pos = pointStateVals.xyz;

//		if (vertNum==0) { pos = vec3(-1, 1, 0); }
//			else if (vertNum==1) { pos = vec3(0, -1, 0);}
//			else if (vertNum==2) { pos = vec3(1, 1, 0); }
//			else {pos = vec3(-2, -2, -2); }
		#endif
		oVert.color = texture(sPointColors, vec2(pointStateVals.w, 0)) * uColor;
		float closeness = 1.0 - attrVals.b;
		closeness = pow(closeness, 0.1);
		oVert.color *= closeness;
	}
//			pos = vec3(-0.1, 0.2, 0.1);
//		pos = P;
//		oVert.color = vec4(1);

	vec4 worldSpacePos = TDDeform(pos);
	gl_Position = TDWorldToProj(worldSpacePos);
}
