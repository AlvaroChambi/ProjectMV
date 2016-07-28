impulse_modifier = acceleration * impulse_vector.x;
friction_modifier = deceleration * friction_vector.x;

new_horizontal_speed = horizontal_speed + impulse_modifier + friction_modifier; 

if( friction_vector.x != 0 ) {
    if( sign( horizontal_speed ) != sign( new_horizontal_speed ) ) {
        new_horizontal_speed = 0;
        friction_vector.x = 0;
    }    
}

if( abs( new_horizontal_speed ) <= max_speed ) {
    horizontal_speed = new_horizontal_speed;
}

if( abs( vertical_speed ) < max_speed ) {
    vertical_speed = vertical_speed + acceleration * impulse_vector.y;
    vertical_speed += grav;
} else {
    impulse_vector.y = 0;
    vertical_speed = 0;
}

//update speed on collision
collision_object = obj_soil;
scr_collision( collision_object );

if( horizontal_speed == 0 && vertical_speed == 0 ) {
    enter_state( OrpheusState.IDLE_STATE );
} else if( vertical_speed != 0 && horizontal_speed != 0 ) {
    enter_state( OrpheusState.RUNNING_STATE );
} else if( vertical_speed != 0 ) {
    enter_state( OrpheusState.JUMPING_STATE );
}
x += horizontal_speed;
y += vertical_speed;
