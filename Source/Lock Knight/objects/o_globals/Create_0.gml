// Global Game Settings

global.toDraw = 1;
alarm[0] = 1;
global.ar = 1
global.gridsize = 256;

intensity = shader_get_uniform(s_ex, "intensity");

global.c_faded_green = make_color_rgb_browser(116,143,124);
global.c_purple = make_color_rgb_browser(253,2,134);
global.c_yellow = make_color_rgb_browser(255,255,0);
global.c_red = make_color_rgb_browser(189,66,79);
global.c_blue = make_color_rgb_browser(119,188,210);
global.c_fullred = make_color_rgb_browser(255,0,0);

s_reset_game_variables();

// Display Settings

display_reset(32, true);
sprite_set_cache_size(s_circle, 64);
if os_type == os_windows
{
	gpu_set_blendenable(true);
	gpu_set_blendmode(bm_normal);
	
	global.dwidth = 1280;
	global.dheight = 720;

	cam = view_get_camera(0);
	cam_x = camera_get_view_x(cam);
	cam_y = camera_get_view_y(cam);

	view_wport[0] = global.dwidth;
	view_hport[0] = global.dheight;
	global.ar = global.dwidth / 1920;
	surface_resize(application_surface, global.dwidth, global.dheight);
	window_set_size( global.dwidth, global.dheight );
	camera_set_view_size(cam, global.dwidth, global.dheight);
}

if os_browser != browser_not_a_browser
{
	if (browser_width != width || browser_height != height)
	{
		width = browser_width;
		height = browser_height;
		global.ar = 0.66 * browser_width / 1920;
		room_width = width;
		room_height = height;
		s_html5_scale(width, height);
	}
}

room_goto_next();
