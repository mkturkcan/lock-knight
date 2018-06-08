//if os_browser != browser_not_a_browser
//{
if (surface_exists(application_surface))
{
//draw_surface(application_surface, 0, 0);

shader_set(s_ex);
//t_h = 1/surface_get_height(application_surface);
shader_set_uniform_f(intensity, 0.25);
draw_surface(application_surface,0,0);
shader_reset();

}
//}