friction_vector.x = -sign( horizontal_speed );

impulse_modifier = acceleration * impulse_vector.x;
friction_modifier = abs( horizontal_speed ) * terrain_friction * friction_vector.x;

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

//Spawn platform
if( platform_spawn ) {
    platform_vertical_separation = 4;
    instance_create(x, y+sprite_height/2+platform_vertical_separation, obj_platform_Orpheus) 
    platform_spawn = false;
}

//update speed on collision
collision = find_collision( obj_city_ground );
if( collision == GROUND_COLLISION ) {
    on_event_received( ON_GROUND_COLLISION );
}

if( vertical_speed > 0 && !place_meeting( x, y, obj_platform_Orpheus ) ) {
    collision = find_collision( obj_platform_Orpheus );
    if( collision == GROUND_COLLISION ) {
        on_event_received( ON_GROUND_COLLISION );
    }
}

if( horizontal_speed == 0 ) {
    on_event_received( ON_ORPHEUS_STOPPED );
}

if( impulse_vector.x == 0 ) {
    if( keyboard_check( vk_left ) ) {
        on_event_received( ON_LEFT_PRESSED );
    } else if( keyboard_check( vk_right ) ) {
        on_event_received( ON_RIGHT_PRESSED );
    }
}
x += horizontal_speed;
y += vertical_speed;
