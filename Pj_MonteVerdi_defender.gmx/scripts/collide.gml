if( vertical_collision != noone ) {
    while ( !place_meeting (x, y+sign(vertical_speed), vertical_collided_object) ) {
        y += sign(vertical_speed);
    }
    
    vertical_speed = 0;
}

if( horizontal_collision != noone ) {
    while ( !place_meeting (x+sign(horizontal_speed ), y, horizontal_collided_object ) ) {
        x+=sign(horizontal_speed);
    }
    horizontal_speed = 0;
}
