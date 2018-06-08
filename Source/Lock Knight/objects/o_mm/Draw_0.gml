draw_set_color(global.c_faded_green);
draw_set_alpha(1);
draw_rectangle(-5000,-5000,5000,5000,0);

draw_set_font(f_main48);
draw_set_color(c_white);
draw_set_alpha(0.95);
draw_set_halign(fa_left); draw_set_valign(fa_top);

display_text = "Level: " + string(global.level);
display_text += "    Lockpicks: " + string(global.picks);
display_text += "    Gold: " + string(global.money);
draw_text_ar(round(view_wport[0]*0.02),round(view_hport[0]*0.025),display_text);
draw_set_alpha(1);