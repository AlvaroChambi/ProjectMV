//get the inputs
key_right_pressed = keyboard_check(vk_right);
key_left_pressed = -keyboard_check(vk_left);

// React to inputs
movement_direction = key_left_pressed + key_right_pressed;
if(place_meeting(x, y+1, obj_platform_Orpheus)) {
    horizontal_speed = movement_direction * movement_speed_platform;
} else {
    horizontal_speed = movement_direction * movement_speed_air;
} 

//Collision
collision_object = obj_soil;
scr_collision(collision_object);

//Move
x+=horizontal_speed;









