view_set_wport(0,argument0);
view_set_hport(0,argument1);
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
window_set_size(argument0, argument1);
window_center();
surface_resize(application_surface, browser_width, browser_height);