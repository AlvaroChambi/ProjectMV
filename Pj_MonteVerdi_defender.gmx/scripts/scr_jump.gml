//Preasure!
if (vertical_speed < max_vertical_speed) {vertical_speed += grav;}        //Gravity

//get the inputs
key_jump_pressed = keyboard_check_pressed(vk_space);
       
//Can jump?
if ((previous_y == current_y) && (key_jump_pressed)){ //If you are pressind the space bar and hadn't move vertically in the last step
    vertical_speed -= jump_speed;             //Jump                
}                                   

//Collision
collision_object = obj_soil;         //From now on I'll first asign a variable that contains the object with which I'll calculate collision
scr_collision(collision_object);     //Then the script will use that object
collision_object = obj_platform_Orpheus;
scr_collision(collision_object);     

//Move
y+= vertical_speed;

