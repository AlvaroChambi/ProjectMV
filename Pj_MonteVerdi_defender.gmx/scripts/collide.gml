side = argument0;

if ( side == UP && side == DOWN ) {
    while ( !place_meeting (x, y+sign( vertical_speed ), collision_object) ) {
        y += sign( vertical_speed );
    }
    vertical_speed = 0;
    return GROUND_COLLISION;
} else {
    while ( !place_meeting (x, y+sign( horizontal_speed ), collision_object) ) {
    y += sign( horizontal_speed );
    }
    horizontal_speed = 0;
    return GROUND_COLLISION;
}
