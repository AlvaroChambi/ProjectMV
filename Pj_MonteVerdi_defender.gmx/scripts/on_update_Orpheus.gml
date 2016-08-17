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

//update speed on collision
collision_object = obj_city_ground;
find_collision( collision_object );
collide();
if( vertical_collision == Side.COLLISION_DOWN ) {
    on_event_received( ON_GROUND_COLLISION );
} else {
    on_event_received( ON_FALLING );
}
      

collision_object = obj_platform_Orpheus;
find_collision( collision_object );

update_current_platform();
if( vertical_collision == Side.COLLISION_DOWN ) {
    if( !place_meeting( x, y, collision_object ) ) {
        horizontal_collision = noone;
        collide();    
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

if( platform_timer == 0 ) {
    platform_available = true;
} else {
    platform_timer--;
}
