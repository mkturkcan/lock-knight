if os_browser != browser_not_a_browser
{
	a = color_get_blue(argument0);
	b = color_get_green(argument0);
	c = color_get_red(argument0);
	draw_set_color(make_color_rgb(a, b, c));
}
else
	draw_set_color(argument0);