if( ds_map_exists( impulse_vector, "x_axis" ) ) {
    impulse_vector_x = ds_map_find_value( impulse_vector, "x_axis" );
} else { 
    impulse_vector_x = OFF;
}

if( ds_map_exists( friction_vector, "x_axis" ) ) {
    friction_vector_x = ds_map_find_value( impulse_vector, "x_axis" );
} else { 
    friction_vector_x = OFF;
}
friction_vector_x = -sign( horizontal_speed );

impulse_modifier = acceleration * impulse_vector_x;
friction_modifier = abs( horizontal_speed ) * terrain_friction * friction_vector_x;

new_horizontal_speed = horizontal_speed + impulse_modifier + friction_modifier; 
if( abs( new_horizontal_speed ) <= max_horizontal_speed*terrain_friction ) {
    new_horizontal_speed = 0;
}

if( abs( new_horizontal_speed ) <= max_horizontal_speed ) {
    horizontal_speed = new_horizontal_speed;
}

if( vertical_speed < max_vertical_speed ) {
    vertical_speed += gravity_acceleration;
}

//update speed on collision
collision = find_collision( obj_soil );

if( collision == GROUND_COLLISION ) {
    on_event_received( ON_GROUND_COLLISION );
}

if( horizontal_speed == 0 ) {
    on_event_received( ON_ORPHEUS_STOPPED );
}

if( impulse_vector_x == 0 ) {
    if( keyboard_check( vk_left ) ) {
        on_event_received( ON_LEFT_PRESSED );
    } else if( keyboard_check( vk_right ) ) {
        on_event_received( ON_RIGHT_PRESSED );
    }
}
x += horizontal_speed;
y += vertical_speed;
