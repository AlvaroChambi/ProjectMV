
//Get inputs
key_right_pressed = keyboard_check(vk_right);
key_left_pressed = keyboard_check(vk_left);

//Change direction
if (key_right_pressed) {
    movement_direction = 1;                           
}                         
if (key_left_pressed) {
    movement_direction = -1;                            
}                         
if (!key_right_pressed && !key_left_pressed) {
    movement_direction = 0;                               
}                   

//If it moves
if (movement_direction != 0) {
    //if its going in the other direction
    if (sign(movement_direction) != sign(horizontal_speed)) {
        reactivity_percent = 1.7; 
    } else {
        reactivity_percent = 1;
    }
    //Apply  acceleration
    if (abs(horizontal_speed) < max_speed) {
        horizontal_speed += acceleration * movement_direction * reactivity_percent; 
    } else {
        horizontal_speed = (max_speed) * movement_direction;
    }  
} else {
    //Decelartion
    new_horizontal_speed = horizontal_speed + deceleration * -sign(horizontal_speed);
    if (sign(new_horizontal_speed) == sign(horizontal_speed)) {
         horizontal_speed = new_horizontal_speed;
    } else {
        horizontal_speed = 0;
    }
}

//Collision
collision_object = obj_soil;
scr_collision(collision_object); 

//Move
x += horizontal_speed;

