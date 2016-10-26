var life_time = argument0;
var sustain = argument1;
var platform_vertical_separation = 4;

var new_platform = instance_create(x + 4 * impulse_vector.x, y+sprite_height/2+platform_vertical_separation, obj_platform_Orpheus); 
    
new_platform.time = 0;
new_platform.life_time = life_time;
new_platform.sustain = sustain;

return new_platform;

