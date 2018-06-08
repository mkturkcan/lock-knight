if started == 0
{
	started = 1;
}
else if started>1
{
	if notify == 1
	{
		s_reset_game_variables();
		global.toDraw = 0;
		//room_goto(r_nextchoice);
		room_goto(r_game);
	}
	if started == 3
	{
		global.toDraw = 0;
		global.lock_level = global.lock_level + 1;
		global.difficulty = global.difficulty + round(1+random(4));
		global.level = global.level + 1;
		room_goto(r_nextchoice);
	}
	else
	{
		//global.difficulty = max(25 + global.lock_level, global.difficulty - round((5)));
		global.toDraw = 0;
		room_goto(r_game);
	}
	
}
else
{
	if abs(point_angle - reward_angle)<7 || abs(360 + point_angle - reward_angle)<7 || abs(-360 + point_angle - reward_angle)<7
	{
		c_level = c_level - 1;
		roll_direction = roll_direction * -1;
		reward_angle = (point_angle + 45 + random(270)) mod 360;
		if c_level == 0
		{
			started = 3;
			game_color = global.c_blue;
			//layer_background_blend(back_id, game_color);
			shake = 0.0;
		}
		global.money = global.money + round(100*((global.difficulty*2+100)/100*(global.lock_level-c_level)/global.lock_level))/100;
	}
	else
	{
		started = 2;
		shake = 1;
		game_color = global.c_red;
		
		global.picks = global.picks - 1;

		if global.picks == 0
		{
		notify = 1;
		game_color = global.c_fullred;
		shake = 3;
		}
		//layer_background_blend(back_id, game_color);
	}
}