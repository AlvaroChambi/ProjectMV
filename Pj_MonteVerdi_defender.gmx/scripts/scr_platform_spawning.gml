<<<<<<< HEAD
//Inputs
key_platform_spawn_pressed = (keyboard_check_pressed(vk_space))
key_platform_spawn_hold = (keyboard_check(vk_space))

//Spawn a platform when the space bar is pressed in mid air
if(key_platform_spawn_pressed && !place_meeting(x, y+4, obj_platform_Orpheus) && jump_available_timer <= 0) {
        
    //Spawn platform
    if(vertical_speed > 0) {vertical_speed = 0;
    }
    
    platform_vertical_separation = 4;
=======
//Checks if you have pulsed "Z" and are in midair
if ( keyboard_check_pressed( ord( "Z" ) ) && !place_meeting (x, y-1, obj_soil) ) {  
    
    if(vertical_speed > 0) {
        vertical_speed = 0;
    }
>>>>>>> a9806d741bf4fcaedd48bd1d88f0f9fbbbad66fe
    
    instance_create(x, y+sprite_height/2+platform_vertical_separation, obj_platform_Orpheus) 

    jump_available_timer = 10;
}

//Make a platform infinite if you hold the space bar standing on it
if(key_platform_spawn_hold) {                                   
    //Get which platform are you standing on
    platform_Orpheus_surviving = instance_place(x, y+1, obj_platform_Orpheus);        //It's necesary to make the same for the two kind of platforms
    
    //If it has detected a platform it will make its life time longer as long as you hold the space bar 
    if(platform_Orpheus_surviving != noone) {                                         
        platform_Orpheus_surviving.time--;
    }
} 
