draw_enable_swf_aa(true);
draw_set_swf_aa_level(1);
draw_set_circle_precision(512);
gpu_set_blendmode(bm_normal);
draw_set_color_mp(game_color);
draw_set_alpha(1);
draw_rectangle(-5000,-5000,5000,5000,0);
draw_set_color(c_white);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*.75, image_yscale*.75, image_angle, game_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + lengthdir_x(32 * image_xscale*.875,point_angle), y + lengthdir_y(32 * image_xscale*.875,point_angle), image_xscale*0.10, image_yscale*0.10, point_angle, global.c_purple, image_alpha);

if started<3
draw_sprite_ext(sprite_index, image_index, x + lengthdir_x(32 * image_xscale*.875,reward_angle), y + lengthdir_y(32 * image_xscale*.875,reward_angle), image_xscale*0.075, image_yscale*0.075, image_angle, global.c_yellow, image_alpha);

draw_set_font(f_main104);
draw_set_halign(fa_center); draw_set_valign(fa_middle);
draw_set_alpha(0.95);
draw_text_ar(x,y,c_level);
draw_set_font(f_main48);
if notify == 1
{
	draw_text_ar(x,y + 32 * image_xscale*1.45,"You Got Caught!\nYour current level has been converted\ninto lockpicks for your next run.");
	//draw_text(x,y + 32 * image_xscale*1.45,"You Got Caught!");
}
draw_set_alpha(0.9);
draw_set_halign(fa_right); draw_set_valign(fa_top);
draw_set_font(f_main104);
if global.lock_level == 1 && c_level == global.lock_level
{
	draw_set_color(c_white);
	draw_set_alpha(0.9);
	draw_text_ar(view_wport[0]*0.98,view_hport[0]*0.025,"Lock Knight");
	draw_set_font(f_mainv48);
	draw_text_ar(view_wport[0]*0.98,view_hport[0]*0.025+1.5*104*global.ar,"v1.0.0");
	draw_set_font(f_gothic);
	//draw_text(view_wport[0]*0.98,view_hport[0]*0.275,"Press Left Mouse Button to Start.\nPress.");
}
draw_set_font(f_main48);
draw_set_halign(fa_left); draw_set_valign(fa_top);
draw_set_alpha(0.95);
display_text = "Complexity: " + string(global.lock_level);
display_text += "\nSpeed: +" +string(difficulty-20);
display_text += "%\nLockpicks: " + string(global.picks);
display_text += "\nGold: " + string(global.money);
draw_text_ar(view_wport[0]*0.02,view_hport[0]*0.025,display_text);


draw_set_alpha(1);