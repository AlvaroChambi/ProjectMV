//Preasure!
if (vertical_speed < max_vertical_speed) {vertical_speed += grav;}        //Gravity

on_ground = place_meeting(x, y + 1, obj_platform_Orpheus);
//get the input
key_jump_pressed = keyboard_check_pressed(vk_space);

//Can jump?                                    //The idea is to make possible to jump a little while after falling from a platform
if(on_ground) {                  //If on the ground: restarts the timer        
    jump_available_timer = 6;                              
}
if(jump_available_timer > 0) {jump_available_timer--;}  


if ((jump_available_timer > 0) && (key_jump_pressed)){ //If you are pressind the space bar and are able to jump
    if (vertical_speed > 0) {
        vertical_speed -= jump_speed;                      //Jump                
    } else { 
        vertical_speed = -jump_speed + grav;
    }
}                                   


//Collision
collision_object = obj_soil;         //From now on I'll first asign a variable that contains the object with which I'll calculate collision
scr_collision(collision_object);     //Then the script will use that object

if (place_meeting(x, y + vertical_speed + 1, obj_platform_Orpheus) && vertical_speed > 0) {
    collision_object = obj_platform_Orpheus;
    scr_collision(collision_object);
}

//Move
y+= vertical_speed;

