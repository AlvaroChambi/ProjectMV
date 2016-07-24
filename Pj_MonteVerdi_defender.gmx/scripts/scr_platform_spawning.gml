//Input
key_platform_spawn_pressed = (keyboard_check_pressed(vk_space))

//Spawn a platform when double tapping space in mid air
/*
if(key_platform_spawn_pressed){
    //2º tap
    if(platform_spawn == 1 && platform_spawn_timer > 0) {
    
        //Spawn platform
        if(vertical_speed > 0) {vertical_speed = 0;}
        
        vertical_separation = 4;
        
        instance_create(x, y+sprite_height/2+vertical_separation, obj_platform_bullets) 
        instance_create(x, y+sprite_height/2+vertical_separation, obj_platform_Orpheus) 
    
        //Restar variables
        platform_spawn = 0;
        platform_spawn_timer = 0;
    }
    //1º tap
    if(!place_meeting(x, y+1, obj_platform_Orpheus) && !place_meeting(x, y+1, obj_soil)){
        platform_spawn = 1;    
        platform_spawn_timer = 30;
    }    
}
//Sustract time from the timer
if(platform_spawn_timer > 0) { 
    platform_spawn_timer--;
}
*/
//Spawn a platform when the space bar is pressed in mid air
if(key_platform_spawn_pressed && !place_meeting(x, y+1, obj_platform_Orpheus) && jump_available_timer <= 0) {
        
    //Spawn platform
    if(vertical_speed > 0) {vertical_speed = 0;}
    
    vertical_separation = 4;
    
    instance_create(x, y+sprite_height/2+vertical_separation, obj_platform_bullets) 
    instance_create(x, y+sprite_height/2+vertical_separation, obj_platform_Orpheus) 
}

//spawn platforms by pressing down or up in the D-pad
/*
//Inputs
key_up_pressed = keyboard_check_pressed(vk_up);
key_down_pressed = keyboard_check_pressed(vk_down);

platform_spawn = max(key_up_pressed, key_down_pressed, 0)
//Spawn the platform
if(platform_spawn) {
    //Spawn platform
    if(vertical_speed > 0) {vertical_speed = 0;}
    
    vertical_separation = 4;
    
    instance_create(x, y+sprite_height/2+vertical_separation, obj_platform_bullets) 
    instance_create(x, y+sprite_height/2+vertical_separation, obj_platform_Orpheus) 
} 
