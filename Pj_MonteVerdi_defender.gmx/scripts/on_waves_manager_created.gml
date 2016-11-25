randomize();                       //Gets random seed
wave_lenght = 40;
wave_tick = 0;

current_wave_frame = noone;
current_wave_index = 0;

configuration = instance_create( 0, 0, wave_configuration);

alarm[0] = 1; // trigger inmediatly
