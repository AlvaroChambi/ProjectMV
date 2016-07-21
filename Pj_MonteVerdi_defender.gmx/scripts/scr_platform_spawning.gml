//Checks if you have pulsed "Z" and are in midair
if (keyboard_check_pressed(ord("Z")) && !place_meeting(x, y-1, obj_soil)) {  
    if(vspd > 0) vspd = 0;
    
    //Creates the platforms
    instance_create(x, y+sprite_height/2+4, obj_platform_bullets)
    instance_create(x, y+sprite_height/2+4, obj_platform_Orpheus) 

    //Diferent accelerations on the ground and in midair
        //diferent max speeds in midair and on the ground
        movespd = mx_movespd_plat;
}
