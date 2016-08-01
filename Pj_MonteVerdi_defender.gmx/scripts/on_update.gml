impulse_modifier = acceleration * impulse_vector.x;
friction_modifier = deceleration * friction_vector.x;

new_horizontal_speed = horizontal_speed + impulse_modifier + friction_modifier; 

if( friction_vector.x != 0 ) {
    if( sign( horizontal_speed ) != sign( new_horizontal_speed ) ) {
        new_horizontal_speed = 0;
        friction_vector.x = OFF;
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
collision = find_collision( obj_soil );

if( collision == GROUND_COLLISION ) {
    on_event_received( ON_GROUND_COLLISION );
}

if( horizontal_speed == 0 ) {
    on_event_received( ON_ORPHEUS_STOPPED );
}
x += horizontal_speed;
y += vertical_speed;
