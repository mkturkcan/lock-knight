alpha = draw_get_alpha();
draw_set_alpha(0.10 * alpha);
s_drawcirc_raw(argument0,argument1,argument2-2,argument3+4,argument4,argument5);
draw_set_alpha(0.60 * alpha);
s_drawcirc_raw(argument0,argument1,argument2-1,argument3+2,argument4,argument5);
draw_set_alpha(alpha);
s_drawcirc_raw(argument0,argument1,argument2,argument3,argument4,argument5);

