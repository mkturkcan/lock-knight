var inner = argument2;
var outer = argument3;
var dj = 360/argument4;
draw_set_color(argument5);
draw_primitive_begin(pr_trianglestrip);
for (var j = 0; j <= argument4; j+=1)
{
    draw_vertex(argument0+lengthdir_x(inner+outer,dj*j),argument1+lengthdir_y(inner+outer,dj*j));
    draw_vertex(argument0+lengthdir_x(inner,dj*j),argument1+lengthdir_y(inner,dj*j));
}
draw_primitive_end();
