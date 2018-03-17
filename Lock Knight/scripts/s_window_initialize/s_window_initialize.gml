global.zoom_level = 1;
display_reset(8, true);
sprite_set_cache_size(s_circle, 512);

if os_type == os_windows
{
	
	global.display_height = display_get_height();
	global.display_width = display_get_width();
	camera_set_view_size(view_camera[0], global.display_width * global.zoom_level, global.display_height * global.zoom_level);
	view_wport[0] = global.display_width * global.zoom_level;
	view_hport[0] = global.display_height * global.zoom_level;
	surface_resize(application_surface, view_wport[0],view_hport[0]);
}

room_speed = 60;