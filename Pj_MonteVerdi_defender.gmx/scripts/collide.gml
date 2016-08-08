if( vertical_collision != noone ) {
    while ( !place_meeting (x, y+sign(vertical_speed), collision_object) ) {
        y += sign(vertical_speed);
    }
    vertical_speed = 0;
}

if( horizontal_collision != noone ) {
    while ( !place_meeting (x+sign(horizontal_speed ), y, collision_object ) ) {
        x+=sign(horizontal_speed);
    }
    horizontal_speed = 0;
}
