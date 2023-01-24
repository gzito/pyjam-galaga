#version 330 core

layout (location = 0) in vec3 in_position;
layout (location = 1) in vec4 in_color;
layout (location = 2) in vec2 in_tex_coords_0 ;

uniform mat4 model_matrix ;
uniform mat4 view_matrix ;
uniform mat4 proj_matrix ;

out vec4 ex_color;
out vec2 ex_tex_coords_0 ;

void main(void)
{
    gl_Position = proj_matrix * view_matrix * model_matrix * vec4( in_position, 1.0) ;
	ex_color = in_color ;
	ex_tex_coords_0 = in_tex_coords_0 ;
}
