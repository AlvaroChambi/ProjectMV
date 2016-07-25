//Diferent accelerations on the ground and in midair
if(previous_y == current_y) {                       //Check if it's on the ground
    on_ground = true;              
} else {
    on_ground = false;
}     

//Get inputs
key_right_pressed = keyboard_check(vk_right);
key_left_pressed = keyboard_check(vk_left);

if (key_right_pressed) { movement_direction = 1;                         //if right the movement_speed is positive
}
if (key_left_pressed) { movement_direction = -1;                         //if left the movement_speed is negative
}
if (!key_right_pressed && !key_left_pressed) {                   //if none:
    if(on_ground){                         
        movement_speed = 0;                             //On the ground it stops inmideatly 
    }else { 
        if (movement_speed - deceleration_air <= 0) {
            movement_speed = 0;
        } else {
            movement_speed -= deceleration_air;  //In mid air it stops slowly
        }
    }
}


horizontal_speed = movement_direction * movement_speed;

//Collision
collision_object = obj_soil;
scr_collision(collision_object);

//Move
x+=horizontal_speed;


//Stablish velocity based on acceleration

//On ground
if(current_x-previous_x != 0) && (on_ground) {
    if(movement_speed < max_movement_speed_platform) {
        movement_speed += acceleration_platform;           
    }
}

//In mid air
if(current_x-previous_x != 0) && (!on_ground) {
    if(movement_speed < max_movement_speed_air) {
        movement_speed += acceleration_air; 
    }
}
if(current_x-previous_x == 0) {
    movement_speed = initial_movement_speed;
}
