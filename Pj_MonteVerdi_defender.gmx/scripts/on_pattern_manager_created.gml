//Set when to create the first pattern
wave_separation_min = 50;
wave_separation_max = 70;

//Width of the cell of a grid for the patterns
cell_width = 398;

//Bullets` variables
bullet_speed = 35;
bullets_per_wave = 4;
bullets_in_wave = 0;
time_between_bullets = 20;

alarm[0] = random_range(wave_separation_min, wave_separation_max);
