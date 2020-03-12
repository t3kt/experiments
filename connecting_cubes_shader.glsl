// Code adapted from http://jamie-wong.com/2016/07/15/ray-marching-signed-distance-functions/
// TouchDesigner version by exsstas https://github.com/exsstas/Raymarching-in-TD

layout (location = 0) out vec4 fragColor;

uniform vec2 uRes;						// GLSL TOP resolution

// raymarcher parameters
uniform int uSteps;						// the max steps before giving up
uniform float uMinDist;					// the starting distance away from the eye
uniform float uMaxDist;					// the max distance away from the eye to march before giving up

// scene parameters
uniform int uNum;						// number of primitives in array

uniform samplerBuffer uSizes;
uniform samplerBuffer uCenters;
uniform float uSmoothK;					// smooth distance for blending primitives
uniform vec4 uPlane;					// XYZ position and size of a plane
uniform float uFrameWidth = 0.5;
uniform float uFrameSmooth = 0.1;

// Camera and color parameters
uniform vec4 uCamera;					// XYZ position + Field of view for a camera
uniform vec3 uLookAt;
uniform vec3 uLight1Pos;				// Light position
uniform vec3 uLight1Col;				// Light color

uniform vec3 uAmbient;
uniform vec3 uDiffuse;
uniform vec3 uSpecular;
uniform float uShine;					// Shininess coefficient


uniform vec3 uAO;                       // Ambient Occlusion intencity
uniform vec4 uShadow;                   // Soft shadow http://iquilezles.org/www/articles/rmshadows/rmshadows.htm



//------------------------------------------------------------
// SDF functions - add below all primitives and blending functions you need
// http://iquilezles.org/www/articles/distfunctions/distfunctions.htm
//------------------------------------------------------------

float sdSphere( vec3 p, float s )
{
  return length(p)-s;
}

float sdPlane( vec3 p, vec4 n )
{
    // n must be normalized
    return dot( p, n.xyz ) + n.w;
}
float sdBox( vec3 p, vec3 b )
{
  vec3 q = abs(p) - b;
  return length(max(q,0.0)) + min(max(q.x,max(q.y,q.z)),0.0);
}
float sdRoundBox( vec3 p, vec3 b, float r )
{
  vec3 q = abs(p) - b;
  return length(max(q,0.0)) + min(max(q.x,max(q.y,q.z)),0.0) - r;
}
float sdCapsule( vec3 p,
    vec3 a,  // offset of end a from center?
    vec3 b,  // offset of end b from center?
    float r  // radius
)
{
  vec3 pa = p - a, ba = b - a;
  float h = clamp( dot(pa,ba)/dot(ba,ba), 0.0, 1.0 );
  return length( pa - ba*h ) - r;
}

float opSmoothUnion( float d1, float d2, float k) {
    float h = clamp( 0.5 + 0.5*(d2-d1)/k, 0.0, 1.0 );
    return mix( d2, d1, h ) - k*h*(1.0-h); }
float opSmoothSubtraction( float d1, float d2, float k ) {
    float h = clamp( 0.5 - 0.5*(d2+d1)/k, 0.0, 1.0 );
    return mix( d2, -d1, h ) + k*h*(1.0-h); }

float opUnion( float d1, float d2 ) { return min(d1,d2); }

float opSubtraction( float d1, float d2 ) { return max(-d1,d2); }

float opIntersection( float d1, float d2 ) { return max(d1,d2); }

vec3 opCheapBendPos(in vec3 p, in float k )
{
    float c = cos(k*p.x);
    float s = sin(k*p.x);
    mat2  m = mat2(c,-s,s,c);
    return vec3(m*p.xy,p.z);
}

vec3 opTwistPos( in vec3 p, in float k )
{
    float c = cos(k*p.y);
    float s = sin(k*p.y);
    mat2  m = mat2(c,-s,s,c);
    return vec3(m*p.xz,p.y);
}

vec3 opRepPos( in vec3 p, in vec3 c )
{
    return mod(p+0.5*c,c)-0.5*c;
}
//------------------------------------------------------------
// Describe your scene here
//------------------------------------------------------------

float quadFrameSDF(vec3 p, vec2 size, float thickness) {
    // top left-right
    float frame = sdCapsule(p,
        vec3(size * vec2(-0.5, 0.5), 0),
        vec3(size * vec2(0.5, 0.5), 0),
        thickness);
    // bottom left-right
    frame = opSmoothUnion(frame, sdCapsule(p,
        vec3(size * vec2(-0.5, -0.5), 0),
        vec3(size * vec2(0.5, -0.5), 0),
        thickness), uFrameSmooth);
    // top-bottom left
    frame = opSmoothUnion(frame, sdCapsule(p,
        vec3(size * vec2(-0.5, 0.5), 0),
        vec3(size * vec2(-0.5, -0.5), 0),
        thickness), uFrameSmooth);
    // top-bottom right
    frame = opSmoothUnion(frame, sdCapsule(p,
        vec3(size * vec2(0.5, 0.5), 0),
        vec3(size * vec2(0.5, -0.5), 0),
        thickness), uFrameSmooth);
    return frame;
}

float boxFrameSDF(vec3 p, vec3 size, float thickness) {
    // front quad frame
    float frame = quadFrameSDF(
        p - vec3(0, 0, 0.5 * size.z),
        size.xy,
        thickness);
    // back quad frame
    frame = opSmoothUnion(frame, quadFrameSDF(
        p + vec3(0, 0, 0.5 * size.z),
        size.xy,
        thickness), uFrameSmooth);

    // top left front-back
    frame = opSmoothUnion(frame, sdCapsule(p,
        size * vec3(-0.5, 0.5, -0.5),
        size * vec3(-0.5, 0.5, 0.5),
        thickness), uFrameSmooth);
    // top right front-back
    frame = opSmoothUnion(frame, sdCapsule(p,
        size * vec3(0.5, 0.5, -0.5),
        size * vec3(0.5, 0.5, 0.5),
        thickness), uFrameSmooth);
    // bottom left front-back
    frame = opSmoothUnion(frame, sdCapsule(p,
        size * vec3(-0.5, -0.5, -0.5),
        size * vec3(-0.5, -0.5, 0.5),
        thickness), uFrameSmooth);
    // bottom right front-back
    frame = opSmoothUnion(frame, sdCapsule(p,
        size * vec3(0.5, -0.5, -0.5),
        size * vec3(0.5, -0.5, 0.5),
        thickness), uFrameSmooth);
    return frame;
}

float sceneSDFInner(vec3 p)
{
//p = mod(p, vec3(12.0));
    
//    float scene = uMaxDist;  // for empty start
    float scene = sdPlane(p, uPlane);

//    p = opCheapBendPos(p, -0.1);
//    p = opTwistPos(p, 0.2);
//    p = opRepPos(p, vec3(0.1));

    for (int i = 0; i < uNum-1; i++) {
        vec3 center = texelFetchBuffer(uCenters, i).xyz;
        vec4 sizeThick = texelFetchBuffer(uSizes, i);
        vec3 size = sizeThick.xyz;
        vec3 adjustedP = p - center;

        float frame = boxFrameSDF(p - center, size, uFrameWidth * sizeThick.w);
        scene = opSmoothUnion(scene, frame, uSmoothK);
    }
    return scene;
}

float sceneSDF(vec3 p)
{
    float scene;
//    scene = sceneSDFInner(p);

//    float r = length(p.xz);
//    float theta = atan(p.z, p.x);
////    theta *= 2.0;
//    theta = mod(theta, radians(60));
//
//    theta = cos(theta) * radians(60);
//
//
//    p.x = r * cos(theta);
//    p.z = r * sin(theta);

//    scene = opSmoothUnion(scene, sceneSDFInner(p), uSmoothK);
     scene = sceneSDFInner(p);

//    scene = opSmoothUnion(scene,sceneSDFInner(
//        p * vec3(-1, 1, 1)
//    ), uSmoothK);
//
//    scene = opSmoothUnion(scene,sceneSDFInner(
//        p * vec3(-1, 1, -1)
//    ), uSmoothK);
//
//    scene = opSmoothUnion(scene,sceneSDFInner(
//        p * vec3(1, 1, -1)
//    ), uSmoothK);

//    theta *= -1.0;
//    p.x = r * cos(theta);
//    p.z = r * sin(theta);
//    scene = opSmoothUnion(scene, sceneSDFInner(p), uSmoothK);

    return scene;
}

//------------------------------------------------------------
// Distance and direction
//------------------------------------------------------------
/**
 * eye: the eye point, acting as the origin of the ray
 * marchingDirection: the normalized direction to march in
 * start: the starting distance away from the eye
 * end: the max distance away from the eye to march before giving up
 */
float shortestDistanceToSurface(vec3 eye, vec3 marchingDirection, float start, float end) {
    float depth = start;
    for (int i = 0; i < uSteps; i++) {
        float dist = sceneSDF(eye + depth * marchingDirection);
        if (dist < start) {
            return depth;
        }
        depth += dist;
        if (depth >= end) {
            return end;
        }
    }
    return end;
}
/**
**
 * Return the normalized direction to march in from the eye point for a single pixel.
 * 
 * fieldOfView: vertical field of view in degrees
 * size: resolution of the output image
 * fragCoord: the x,y coordinate of the pixel in the output image
 */
vec3 rayDirection(float fieldOfView, vec2 size, vec2 fragCoord) {
    vec2 xy = fragCoord - size / 2.0;
    float z = size.y / tan(radians(fieldOfView) / 2.0);
    return normalize(vec3(xy, -z));
}
//------------------------------------------------------------
// Normals
//------------------------------------------------------------
/**
 * Using the gradient of the SDF, estimate the normal on the surface at point p.
 */
vec3 estimateNormal(vec3 p) {
    return normalize(vec3(
        sceneSDF(vec3(p.x + uMinDist, p.y, p.z)) - sceneSDF(vec3(p.x - uMinDist, p.y, p.z)),
        sceneSDF(vec3(p.x, p.y + uMinDist, p.z)) - sceneSDF(vec3(p.x, p.y - uMinDist, p.z)),
        sceneSDF(vec3(p.x, p.y, p.z  + uMinDist)) - sceneSDF(vec3(p.x, p.y, p.z - uMinDist))
    ));
}

//------------------------------------------------------------
// Light + coloring + shadows
//------------------------------------------------------------

// compute ambient occlusion value at given position/normal
// Source - https://www.shadertoy.com/view/lsKcDD
float calcAO( in vec3 pos, in vec3 nor )
{
    float occ = uAO.x;
    float sca = uAO.y;
    for( int i=0; i<uAO.z; i++ )
    {
        float hr = 0.01 + 0.12*float(i)/4.0;
        vec3 aopos =  nor * hr + pos;
        float dd = sceneSDF( aopos );
        occ += -(dd-hr)*sca;
        sca *= 0.95;
    }
    return clamp( 1.0 - 3.0*occ, 0.0, 1.0 );    
}

// Soft shadow code from http://iquilezles.org/www/articles/rmshadows/rmshadows.htm
float softshadow(vec3 p, vec3 eye)
{
    float mint = uShadow.x;
    float maxt = uShadow.y;
    float k = uShadow.z;
    float res = 1.0;
    float ph = 1e20;
    for( float t=mint; t<maxt; )
    {
        float h = sceneSDF(p + eye*t);
        if( h<0.001 )
            return 0.0;
        float y = h*h/(2.0*ph);
        float d = sqrt(h*h-y*y);
        res = min( res, k*d/max(0.0,t-y) );
        ph = h;
        t += h;
    }
    return res;
}


/**
 * Lighting contribution of a single point light source via Phong illumination.
 * 
 * The vec3 returned is the RGB color of the light's contribution.
 *
 * k_a: Ambient color
 * k_d: Diffuse color
 * k_s: Specular color
 * alpha: Shininess coefficient
 * p: position of point being lit
 * eye: the position of the camera
 * lightPos: the position of the light
 * lightIntensity: color/intensity of the light
 *
 * See https://en.wikipedia.org/wiki/Phong_reflection_model#Description
 */

vec3 phongContribForLight(vec3 k_d, vec3 k_s, float alpha, vec3 p, vec3 eye,
                          vec3 lightPos, vec3 lightIntensity) {
    vec3 N = estimateNormal(p);
    vec3 L = normalize(lightPos - p);
    vec3 V = normalize(eye - p);
    vec3 R = normalize(reflect(-L, N));

    float occ = calcAO(p, N);       // Ambient occlusion
    
    float dotLN = dot(L, N);
    float dotRV = dot(R, V);
    
    if (dotLN < 0.0) {
        // Light not visible from this point on the surface, so add no color
        return vec3(0.0);
    } 
    
    if (dotRV < 0.0) {
        // Light reflection in opposite direction as viewer, apply only diffuse
        // component + AO
        return lightIntensity * (k_d * dotLN) *sqrt(occ);
    }
    return lightIntensity * (k_d * dotLN + k_s * pow(dotRV, alpha)) *sqrt(occ);
}

/**
 * Lighting via Phong illumination.
 * 
 * The vec3 returned is the RGB color of that point after lighting is applied.
 * k_a: Ambient color
 * k_d: Diffuse color
 * k_s: Specular color
 * alpha: Shininess coefficient
 * p: position of point being lit
 * eye: the position of the camera
 *
 * See https://en.wikipedia.org/wiki/Phong_reflection_model#Description
 */
vec3 phongIllumination(vec3 k_a, vec3 k_d, vec3 k_s, float alpha, vec3 p, vec3 eye) {
    vec3 ambientLight = 0.5 * vec3(1.0, 1.0, 1.0);
    vec3 color = ambientLight * k_a;

    color += phongContribForLight(k_d, k_s, alpha, p, eye,
                                  uLight1Pos,
                                  uLight1Col);
    float shadow = softshadow( p, normalize(uLight1Pos-p));     // calc grayscale shadow
 
    // // Example of hardcoded (second) light + shadow: 
    // vec3 light2Pos = vec3(2.0, 5.0, 2.0);
    // vec3 light2Col = vec3(0.6, 0.6, 1.0);   
    // color += phongContribForLight(k_d, k_s, alpha, p, eye,
    //                               light2Pos,
    //                               light2Col);    
    // shadow *= softshadow( p, normalize(light2Pos-p));     // calc grayscale shadow 2


    vec3 cshadow = color * shadow;                              // multiply shadows with color
    color = mix(color, vec3(cshadow), uShadow.w);               // mix color+shadows based on uShadow 4th value
    return color;
}


//------------------------------------------------------------
// "Look at ..." matrix
//------------------------------------------------------------
/**
 * Return a transform matrix that will transform a ray from view space
 * to world coordinates, given the eye point, the camera target, and an up vector.
 *
 * This assumes that the center of the camera is aligned with the negative z axis in
 * view space when calculating the ray marching direction. See rayDirection.
 */
mat4 viewMatrix(vec3 eye, vec3 center, vec3 up) {
    // Based on gluLookAt man page
    vec3 f = normalize(center - eye);
    vec3 s = normalize(cross(f, up));
    vec3 u = cross(s, f);
    return mat4(
        vec4(s, 0.0),
        vec4(u, 0.0),
        vec4(-f, 0.0),
        vec4(0.0, 0.0, 0.0, 1)
    );
}

//------------------------------------------------------------
// Put everything together
//------------------------------------------------------------
void main()
{
    // setting camera(eye)
    vec3 viewDir = rayDirection(uCamera.w, uRes.xy, gl_FragCoord.xy);
    vec3 eye = uCamera.xyz;
    mat4 viewToWorld = viewMatrix(eye, uLookAt, vec3(0.0, 1.0, 0.0));
    vec3 worldDir = (viewToWorld * vec4(viewDir, 0.0)).xyz;

    float dist = shortestDistanceToSurface(eye, worldDir, uMinDist, uMaxDist);
    
    if (dist > uMaxDist - uMinDist) {
        fragColor = vec4(0.0);          // Didn't hit anything return transparent background
        return;
    }
    
    // The closest point on the surface to the eyepoint along the view ray
    vec3 p = eye + dist * worldDir;


    // coloring (details at line 165)
    vec3 color = phongIllumination(uAmbient, uDiffuse, uSpecular, uShine, p, eye); 
    
    // alpha set to 1.0, try change it to 0.0 instead:
    fragColor = vec4(color, 1.0);
}