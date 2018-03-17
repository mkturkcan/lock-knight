if os_browser != browser_not_a_browser
{
	base_width = browser_width;
	base_height = browser_height;
	width = base_width;
	height = base_height;
	room_width = width;
	room_height = height;
	aspect = 1;
	application_surface_draw_enable(0);
	window_set_colour(c_black);
	s_html5_scale(base_width, base_height);
}

s_window_initialize();


