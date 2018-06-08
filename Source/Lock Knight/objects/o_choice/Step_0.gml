if x_scale<1
x_scale = min(1,x_scale + 10/fps);

if active ==  1
activity_level = min(1, activity_level + 10/fps);
else
activity_level = max(0, activity_level - 10/fps);

if mouse_x>x && x+view_wport[0]*0.16>mouse_x&&mouse_y>y && y+view_hport[0]*0.5>mouse_y
{
	active = 1;
}
else
active = 0;

x = view_wport[0]*0.15 + i*view_wport[0]*0.18;
y = (view_hport[0] - view_wport[0]*0.32)/2;