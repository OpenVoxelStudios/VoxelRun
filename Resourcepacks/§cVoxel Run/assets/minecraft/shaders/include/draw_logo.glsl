

// Returns true if the fragment is near the line between p0 and p1
// Draw a line from p0 to p1, with rounded ends and limited by `progress` (0–1)
bool drawLine(vec2 uv, vec2 p0, vec2 p1, float thickness, float progress) {
    vec2 dir = p1 - p0;
    float len = length(dir);
    if (len == 0.0) return false;

    dir /= len; // normalize
    vec2 perp = vec2(-dir.y, dir.x); // perpendicular for thickness

    vec2 toPoint = uv - p0;
    float distAlong = dot(toPoint, dir);
    float distPerp = dot(toPoint, perp);

    // Early out if perpendicular distance too far
    if (abs(distPerp) > thickness) return false;

    // Clamp rendering along the line to `progress`
    float maxLength = len * clamp(progress, 0.0, 1.0);
    if (distAlong < -thickness || distAlong > maxLength + thickness) return false;

    // Rounded end caps (simple circular test)
    if (distAlong < 0.0) {
        return length(uv - p0) <= thickness;
    }
    if (distAlong > maxLength) {
        vec2 endpoint = p0 + dir * maxLength;
        return length(uv - endpoint) <= thickness;
    }

    return true;
}

bool drawBoxedLine(vec2 uv, vec2 p0, vec2 p1, float thickness, float progress, vec2 resolution, float scale) {
    float aspect = resolution.x / resolution.y;

    // Convert screen UV (0–1) to centered box UV (0–1 within a square in center of screen)
    vec2 boxUV = uv;

    if (aspect > 1.0) {
        float boxWidth = resolution.y / resolution.x;
        float margin = (1.0 - boxWidth) / 2.0;
        boxUV.x = (uv.x - margin) / boxWidth;
    } else {
        float boxHeight = resolution.x / resolution.y;
        float margin = (1.0 - boxHeight) / 2.0;
        boxUV.y = (uv.y - margin) / boxHeight;
    }

    // Discard pixels outside the centered box
    if (any(lessThan(boxUV, vec2(0.0))) || any(greaterThan(boxUV, vec2(1.0)))) {
        return false;
    }

    // Scale around the center (0.5, 0.5)
    boxUV = (boxUV - 0.5) / scale + 0.5;

    // Check if the scaled coordinate is still within bounds (optional safety clamp)
    if (any(lessThan(boxUV, vec2(0.0))) || any(greaterThan(boxUV, vec2(1.0)))) {
        return false;
    }

    // Draw line in scaled UV space
    return drawLine(boxUV, p0, p1, thickness / scale, progress);
}


bool drawBoxedDot(vec2 uv, vec2 p0, float thickness, float progress, vec2 resolution) {
    float aspect = resolution.x / resolution.y;

    // Convert screen UV (0–1) to centered box UV (0–1 within a square in center of screen)
    vec2 boxUV = uv;

    if (aspect > 1.0) {
        float boxWidth = resolution.y / resolution.x;
        float margin = (1.0 - boxWidth) / 2.0;
        boxUV.x = (uv.x - margin) / boxWidth;
    } else {
        float boxHeight = resolution.x / resolution.y;
        float margin = (1.0 - boxHeight) / 2.0;
        boxUV.y = (uv.y - margin) / boxHeight;
    }

    if (any(lessThan(boxUV, vec2(0.0))) || any(greaterThan(boxUV, vec2(1.0)))) {
        return false;
    }

    // Check if within circular dot area
    return distance(boxUV, p0) <= thickness * progress;
}



bool drawMain(vec2 uv, vec2 resolution, float progress) {
    
   float thickness = 0.01;

    uv = clamp(uv-vec2(0.05,0.05),0,1);

    if (drawBoxedLine(uv, vec2(0.43,0.17), vec2(0.22,0.28), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.21,0.48), vec2(0.22,0.28), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.43,0.39), vec2(0.21,0.48), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.43,0.17), vec2(0.43,0.39), thickness, progress, resolution,progress/4+0.75)) return true;

    if (drawBoxedLine(uv, vec2(0.43,0.17), vec2(0.65,0.28), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.66,0.48), vec2(0.65,0.28), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.66,0.48), vec2(0.43,0.39), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.43,0.17), vec2(0.43,0.39), thickness, progress, resolution,progress/4+0.75)) return true;

    if (drawBoxedLine(uv, vec2(0.21,0.48), vec2(0.33,0.525), thickness, progress, resolution,progress/4+0.75)) return true;

    if (drawBoxedLine(uv, vec2(0.739, 0.787), vec2(0.66,0.48), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.739, 0.787), vec2(0.497, 0.818), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.497, 0.818), vec2(0.475, 0.756), thickness, progress, resolution,progress/4+0.75)) return true;


    if (drawBoxedLine(uv, vec2(0.66,0.48), vec2(0.729, 0.475), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.799, 0.77), vec2(0.729, 0.475), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.739, 0.787), vec2(0.799, 0.77), thickness, progress, resolution,progress/4+0.75)) return true;

    if (drawBoxedLine(uv, vec2(0.599, 0.832), vec2(0.658, 0.8), thickness*1.2, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.589, 0.832), vec2(0.648, 0.805), thickness*1.2, progress, resolution,progress/4+0.75)) return true;

    if (drawBoxedLine(uv, vec2(0.475, 0.756), vec2(0.562, 0.713), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.396, 0.683), vec2(0.562, 0.713), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.396, 0.683), vec2(0.295, 0.724), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.475, 0.756), vec2(0.295, 0.724), thickness, progress, resolution,progress/4+0.75)) return true;

    if (drawBoxedLine(uv, vec2(0.295, 0.724), vec2(0.306, 0.533), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.306, 0.533), vec2(0.4, 0.5), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.4, 0.5), vec2(0.396, 0.683), thickness, progress, resolution,progress/4+0.75)) return true;

    if (drawBoxedLine(uv, vec2(0.568, 0.53), vec2(0.4, 0.5), thickness, progress, resolution,progress/4+0.75)) return true;
    if (drawBoxedLine(uv, vec2(0.562, 0.713), vec2(0.568, 0.53), thickness, progress, resolution,progress/4+0.75)) return true;

    //if (drawBoxedDot(uv, vec2(0.461, 0.617), thickness, progress, resolution)) return true;
    //if (drawBoxedDot(uv, vec2(0.509, 0.6344), thickness, progress, resolution)) return true;
    //if (drawBoxedDot(uv, vec2(0.4614, 0.571), thickness, progress, resolution)) return true;
    //if (drawBoxedDot(uv, vec2(0.5065, 0.5855), thickness, progress, resolution)) return true;
//
    //if (drawBoxedDot(uv, vec2(0.3196, 0.6), thickness, progress, resolution)) return true;
    //if (drawBoxedDot(uv, vec2(0.353, 0.585), thickness, progress, resolution)) return true;
    //if (drawBoxedDot(uv, vec2(0.352, 0.6345), thickness, progress, resolution)) return true;
    //if (drawBoxedDot(uv, vec2(0.3206, 0.648), thickness, progress, resolution)) return true;



    return false;
}
