if os_browser != browser_not_a_browser
{
	if (browser_width != width || browser_height != height)
	{
		width = browser_width;
		height = browser_height;
		global.ar = browser_width / 1920;
		room_width = width;
		room_height = height;
		s_html5_scale(width, height);
	}
}