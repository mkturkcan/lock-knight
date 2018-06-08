if active == 1
{
	if type == "abandon"
	{
		reset_money = global.money;
		s_reset_game_variables();
		global.picks = global.picks + floor(reset_money);
		room_goto(r_game);	
	}
	if type == "game"
	{
		global.lock_level = lock_level;
		global.difficulty = difficulty;
		room_goto(r_game);	
	}
	
}