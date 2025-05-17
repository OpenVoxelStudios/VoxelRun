#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;

out vec4 fragColor;

bool isLoadingScreen(vec4 color) {
    return (color.r == 239.0 / 255.0);
}


void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;
    if (isLoadingScreen(fragColor)) {
        float progress = vertexColor.a;
        progress = clamp(progress*3-2,0,1);
        fragColor = vec4(0.2,0.2,0.2,progress);
    }
}
