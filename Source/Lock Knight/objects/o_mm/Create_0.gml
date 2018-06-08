s_window_initialize();

for (i=0;i<4;i++)
{
	if i == 3
	{
		a = instance_create_depth(view_wport[0]*0.15 + i*view_wport[0]*0.18,view_hport[0]*0.25,-1,o_choice);
		a.name = "Abandon Run";
		a.desc = "Abandon this run; you will gain one lockpick per gold piece collected.";
		a.next = r_game;
		a.type = "abandon";
		a.i = i;
	}
	else
	{
		a = instance_create_depth(view_wport[0]*0.15 + i*view_wport[0]*0.18,view_hport[0]*0.25,-1,o_choice);
		ic = choose(0,0,0,1,1,2);
		if ic == 0
		{
			a.lock_level = round(global.level*0.8 + random(0.4*global.level));
			a.difficulty = round(20+random(5));
			a.gold = round(1 * (100 + a.difficulty) * power(a.lock_level, 2));
			a.desc = "Complexity: " + string(a.lock_level) + "\nSpeed: +" +string(a.difficulty-20) + "%";
			a.name = "Mansion (Easy)";
			a.type = "game";
			a.image_index = 1;
			a.next = r_game;
			a.i = i;
		}
		else if ic == 1
		{
			a.lock_level = round(global.level*1 + random(1.5*global.level));
			a.difficulty = round(25+random(10));
			a.gold = round(1 * (100 + a.difficulty) * power(a.lock_level, 2));
			a.desc = "Complexity: " + string(a.lock_level) + "\nSpeed: +" +string(a.difficulty-20) + "%";
			a.name = "Mansion (Normal)";
			a.type = "game";
			a.image_index = 2;
			a.next = r_game;
			a.i = i;
		}
		else if ic == 2
		{
			a.lock_level = round(global.level*1.0 + random(3.0*global.level));
			a.difficulty = round(30+random(15));
			a.gold = round(1 * (100 + a.difficulty) * power(a.lock_level, 2));
			a.desc = "Complexity: " + string(a.lock_level) + "\nSpeed: +" +string(a.difficulty-20) + "%";
			a.name = "Mansion (Hard)";
			a.type = "game";
			a.image_index = 3;
			a.next = r_game;
			a.i = i;
		}
	}
}