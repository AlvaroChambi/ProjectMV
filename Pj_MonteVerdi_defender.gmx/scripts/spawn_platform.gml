if( platform_available ) {
    
    var life_time = argument0;
    var sustain = argument1;
    var platform_vertical_separation = 4;
    
    var new_platform = instance_create(x, y+sprite_height/2+platform_vertical_separation, obj_platform_Orpheus); 
    
    platform_timer = 10;
    platform_available = false;
        
    new_platform.time = 0;
    new_platform.life_time = life_time;
    new_platform.sustain = sustain;
    
    return new_platform;
}
