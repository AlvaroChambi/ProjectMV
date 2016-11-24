var platform_vertical_separation = 4;

var platform_x = x + 4 * impulse_vector.x;
var platform_y = y+sprite_height/2+platform_vertical_separation;

var new_platform = instance_create(platform_x, platform_y, obj_platform_orpheus);
    
audio_play_sound(platform_spawn_0, 3, false);


