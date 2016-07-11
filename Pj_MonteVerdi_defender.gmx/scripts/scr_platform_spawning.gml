if (keyboard_check_pressed(ord("Z")) && !place_meeting(x, y-1, obj_soil))   //Checks if you have pulsed "Z" and are in midair
{
    instance_create(x+1*sign(hspd), y+sprite_height/2+4, obj_platform)
    instance_create(x+1*sign(hspd), y+sprite_height/2+4, obj_platform_collision) //Creates the platform and runs code on it
}
