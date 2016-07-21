//get the inputs
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);

// React to inputs
movement_direction = key_left + key_right;
if(place_meeting(x, y+1, obj_platform_Orpheus)) {horizontal_speed = movement_direction * movement_speed_platform;}
else {horizontal_speed = movement_direction * movement_speed_air;} 

//Collision
collision_object = obj_soil;
scr_collision(collision_object);

//Move
x+=horizontal_speed;


//Stablish velocity and acceleration
/*if(currentx-prevx != 0) { // && place_meeting(x, y+1, obj_soil))  {
    if(movespd <30)movespd += acceleration;         //Stablish a maximum speed 
}
if(currentx-prevx = 0) {
    movespd = 2;                      //When stop moving go back to original speed 
}







