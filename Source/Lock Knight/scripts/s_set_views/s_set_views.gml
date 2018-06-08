cam = view_get_camera(0);
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

display_reset(8, true);
sprite_set_cache_size(s_circle, 64);

if os_type == os_windows
{
	view_wport[0] = global.dwidth;
	view_hport[0] = global.dheight;
	surface_resize(application_surface, global.dwidth, global.dheight);
	window_set_size( global.dwidth, global.dheight );
	camera_set_view_size(cam, global.dwidth, global.dheight);
}