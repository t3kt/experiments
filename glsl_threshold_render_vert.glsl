uniform int maxpoints;
uniform vec4 uColor = vec4(1);
uniform sampler2D sPointState1;
uniform sampler2D sPointState2;
uniform sampler2D sLineAttrs;
uniform sampler2D sPointColors;

in float lineEnd; // comes in as -1 .. 1

out Vertex {
	vec4 color;
} oVert;

void main()
{
	int inst = TDInstanceID();
	ivec2 dataCoord = ivec2(
		inst / maxpoints,
		inst % maxpoints);
	vec4 lineAttrVals = texelFetch(sLineAttrs, dataCoord, 0);
	vec3 pos;
	if (!bool(lineAttrVals.r) || dataCoord.y <= dataCoord.x) {
		oVert.color = vec4(0);
		pos = vec3(0);
	} else {
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
		vec4 pointStateVals = mix(pointState1, pointState2, (lineEndVal + 1) / 2);
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
		oVert.color = texture(sPointColors, vec2(pointStateVals.w, 0)) * uColor;
		float closeness = 1.0 - lineAttrVals.b;
		closeness = pow(closeness, 0.1);
		oVert.color *= closeness;
	}

	vec4 worldSpacePos = TDDeform(pos);
	gl_Position = TDWorldToProj(worldSpacePos);
}
