#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;
layout (location = 3) in mat4 instanceMatrix;

uniform mat4 view;
uniform mat4 projection;

out VS_OUT {
    vec2 texCoords;
} vs_out;


void main()
{
    gl_Position = projection * view * instanceMatrix * vec4(aPos, 1.0);
    vs_out.texCoords = aTexCoords;
}