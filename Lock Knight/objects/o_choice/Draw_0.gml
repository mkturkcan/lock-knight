draw_set_color(c_backcolor);
draw_rectangle(x+view_wport[0]*0.08*(1-x_scale),y-activity_level*global.gridsize/2,x+view_wport[0]*0.08*(1+x_scale),y+view_wport[0]*0.32-activity_level*global.gridsize/2,0);

draw_set_color(c_maincolor);
draw_set_halign(fa_center);
draw_set_font(f_gothic);
draw_text_ext_transformed(x+view_wport[0]*0.08,y+view_wport[0]*0.18-activity_level*global.gridsize/2,name,-1,view_wport[0]*0.16,x_scale*global.ar,1*global.ar,0);
draw_set_font(c_maincolor);
draw_set_font(f_desc);
draw_text_ext_transformed(x+view_wport[0]*0.08,y+view_wport[0]*0.26-activity_level*global.gridsize/2,desc,-1,view_wport[0]*0.16,x_scale*global.ar,1*global.ar,0);

draw_sprite_ext(s_thumbs,image_index,x+view_wport[0]*0.08,y-activity_level*global.gridsize/2-1,1/512*(view_wport[0]*0.16+2)*x_scale,1/512*(view_wport[0]*0.16+2),0,c_white,1);