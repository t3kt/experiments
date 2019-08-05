uniform int maxpoints;
uniform vec2 distrange;
uniform float requireDistinctGroups;

layout(location = 0) out vec4 state1Out;
layout(location = 1) out vec4 state2Out;
layout(location = 2) out vec4 attrsOut;

vec4 pointState(float u) {
	return texture(sTD2DInputs[0], vec2(u, 0.0));
}

vec4 pointColor(float u) {
	return texture(sTD2DInputs[1], vec2(u, 0.0));
}

float pointGroup(float u) {
	return texture(sTD2DInputs[2], vec2(u, 0.0)).r;
}

float map(float value, float inMin, float inMax, float outMin, float outMax) {
  return outMin + (outMax - outMin) * (value - inMin) / (inMax - inMin);
}

vec2 map(vec2 value, vec2 inMin, vec2 inMax, vec2 outMin, vec2 outMax) {
  return outMin + (outMax - outMin) * (value - inMin) / (inMax - inMin);
}

vec3 map(vec3 value, vec3 inMin, vec3 inMax, vec3 outMin, vec3 outMax) {
  return outMin + (outMax - outMin) * (value - inMin) / (inMax - inMin);
}

vec4 map(vec4 value, vec4 inMin, vec4 inMax, vec4 outMin, vec4 outMax) {
  return outMin + (outMax - outMin) * (value - inMin) / (inMax - inMin);
}

bool isMatch(float d, float group1, float group2) {
	if (d < distrange.x || d > distrange.y) {
		return false;
	}
	if (requireDistinctGroups > 0.5 && group1 == group2) {
		return false;
	}
	return true;
}


void main()
{
	//ivec2 ij = ivec2(vUV.st * maxpoints);
	vec4 point1 = pointState(vUV.s);
	vec4 point2 = pointState(vUV.t);
	float group1 = pointGroup(vUV.s);
	float group2 = pointGroup(vUV.t);
	
	vec4 state1 = vec4(0.0);
	vec4 state2 = vec4(0.0);
	vec4 attrs = vec4(0.0);
	
    //if (point1.x < 0.5) {
    //	state1 = vec4(0.0,1.0,0.0,1.0);
    //	state2 = vec4(0.0,0.0,1.0,1.0);
    //	attrs = vec4(-84.5,1.0,1.0,1.0);
    //}
	if (vUV.s < vUV.t &&
	 point1.a > 0 && point2.a > 0) {
		float d = distance(point1.xyz, point2.xyz);
		if (!isMatch(d, group1, group2)) {
			state1 = vec4(0.0);
			state2 = vec4(0.0);
			attrs = vec4(0.0, 0.0, 0.0, 1.0);
		} else {
			state1 = vec4(point1.xyz, vUV.s);
			state2 = vec4(point2.xyz, vUV.t);
			float reldist;
			//reldist = map(d, distrange.x, distrange.y, 0.0, 1.0);
			reldist = smoothstep(distrange.x, distrange.y, d);
			float absdist = d;
			//d = 0.0;
			attrs = vec4(
				/*exists*/ 1.0,
				/*absdist*/ absdist,
				/*reldist*/ reldist,
				1.0);
		}
	}
	
    state1Out = TDOutputSwizzle(state1);
    state2Out = TDOutputSwizzle(state2);
    attrsOut = TDOutputSwizzle(attrs);
}
