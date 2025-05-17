


float isMojangLogo() {
    vec4 testMarker = texelFetch(Sampler0, ivec2(267, 146), 0);
    if (testMarker == vec4(1.0)) {
        //// Exclude bottom half or edge vertices to prevent weird remapping
        //if (UV0.y > 0.5) return -1.0;
        //else if ((vertexId == 0 || vertexId == 3) && UV0.y == 0.5) return -1.0;
        return 1.0;
    }
    return 0.0;
}
