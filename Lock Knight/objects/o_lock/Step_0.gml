image_xscale = 8 * global.ar;
image_yscale = image_xscale;

if roll_direction==1&&started == 1
{
	point_angle = point_angle - (difficulty/50*360) / room_speed;
}
else if roll_direction==-1&&started == 1
{
	point_angle = point_angle + (difficulty/50*360) / room_speed;
}



if started == 3
{
	x = view_wport[0] / 2 + view_wport[0] / 20 * random(shake);
	y = view_hport[0] / 2 + view_hport[0] / 20 * random(shake) - (1 - image_alpha) * view_hport[0] / 15;	
	image_alpha = max(0.5, image_alpha * 0.99);
	shake = shake * 0.95;
}
else
{
	x = view_wport[0] / 2 + view_wport[0] / 20 * random(shake);
	y = view_hport[0] / 2 + view_hport[0] / 20 * random(shake);	
	shake = shake * 0.95;
}

