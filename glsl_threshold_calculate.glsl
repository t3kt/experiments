uniform int maxpoints;
uniform vec2 distrange;
uniform float requireDistinctGroups;

/*
	xyz: pt1.xyz
	w: point 1 index / maxpoints
		(i.e. the U position in the input data textures)
*/
layout(location = 0) out vec4 state1Out;

/*
	xyz: pt2.xyz
	w: point 2 index / maxpoints
		(i.e. the U position in the input data textures)
*/
layout(location = 1) out vec4 state2Out;

/*
	x: exists
	y: absolute distance (for triangles, this is the average of that of its edges)
	z: distance relative to range (same for this)
	w: was evaluated (bool) (this is mostly just for debugging purposes to indicate which
			pixels in the data are skipped over (since they'd be duplicates of other pixels)
*/
layout(location = 2) out vec4 attrsOut;

#ifdef TRIANGLE_MODE

/*
	xyz: pt2.xyz
	w: point 2 index / maxpoints
		(i.e. the U position in the input data textures)
*/
layout(location = 3) out vec4 state3Out;

#endif

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

bool inRange(float d) {
	return d >= distrange.x && d <= distrange.y;
}

bool isMatch(float d, float group1, float group2) {
	if (!inRange(d)) {
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
	
	vec4 state1 = vec4(0);
	vec4 state2 = vec4(0);
	vec4 attrs = vec4(0);
	
    //if (point1.x < 0.5) {
    //	state1 = vec4(0.0,1.0,0.0,1.0);
    //	state2 = vec4(0.0,0.0,1.0,1.0);
    //	attrs = vec4(-84.5,1.0,1.0,1.0);
    //}
	#ifndef TRIANGLE_MODE
	if (vUV.s < vUV.t &&
	 point1.a > 0 && point2.a > 0) {
		float d = distance(point1.xyz, point2.xyz);
		if (!isMatch(d, group1, group2)) {
			attrs = vec4(0, 0, 0, 1);
		} else {
			state1 = vec4(point1.xyz, vUV.s);
			state2 = vec4(point2.xyz, vUV.t);
			float absdist = d;
			float reldist = smoothstep(distrange.x, distrange.y, absdist);
			attrs = vec4(
				/*exists*/ 1.0,
				/*absdist*/ absdist,
				/*reldist*/ reldist,
				1.0);
		}
	}
	#else
	vec4 point3 = pointState(vUV.p);
	float group3 = pointGroup(vUV.p);
	vec4 state3 = vec4(0);
	if (vUV.s < vUV.t && vUV.t < vUV.p && point1.a > 0 && point2.a > 0 && point3.a > 0) {
		float d12 = distance(point1.xyz, point2.xyz);
		float d23 = distance(point2.xyz, point3.xyz);
		float d31 = distance(point3.xyz, point1.xyz);
		if (!isMatch(d12, group1, group2) ||
				!isMatch(d23, group2, group3) ||
				!isMatch(d31, group3, group1)) {
			attrs = vec4(0, 0, 0, 1);
		} else {
			state1 = vec4(point1.xyz, vUV.s);
			state2 = vec4(point2.xyz, vUV.t);
			state3 = vec4(point3.xyz, vUV.p);
			float reldist12 = smoothstep(distrange.x, distrange.y, d12);
			float reldist23 = smoothstep(distrange.x, distrange.y, d23);
			float reldist31 = smoothstep(distrange.x, distrange.y, d31);
			float absdist = (d12 + d23 + d31) / 3.0;
			float reldist = smoothstep(distrange.x, distrange.y, absdist);
			attrs = vec4(
				/*exists*/ 1.0,
				/*absdist*/ absdist,
				/*reldist*/ reldist,
				1.0);
		}
	}
	#endif
	
  state1Out = TDOutputSwizzle(state1);
  state2Out = TDOutputSwizzle(state2);
  attrsOut = TDOutputSwizzle(attrs);

	#ifdef TRIANGLE_MODE
  state3Out = TDOutputSwizzle(state3);
	#endif
}
