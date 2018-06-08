

game_color = global.c_faded_green;

lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id, game_color);


c_level = global.lock_level;
difficulty = global.difficulty;

image_xscale = 256 * global.ar / global.gridsize;
image_yscale = image_xscale;

point_angle = 90;
reward_angle = 180 + random(180);

started = 0;
roll_direction = choose(1,-1);

shake = 0;
notify = 0;