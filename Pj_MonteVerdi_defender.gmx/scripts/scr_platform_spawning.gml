//Checks if you have pulsed "Z" and are in midair
if ( keyboard_check_pressed( ord( "Z" ) ) && !place_meeting (x, y-1, obj_soil) ) {  
    
    if(vertical_speed > 0) {
        vertical_speed = 0;
    }
    
    //Creates the platforms
    vertical_separation = 4;
    
    instance_create(x, y+sprite_height/2+vertical_separation, obj_platform_bullets) 
    instance_create(x, y+sprite_height/2+vertical_separation, obj_platform_Orpheus) 
}
