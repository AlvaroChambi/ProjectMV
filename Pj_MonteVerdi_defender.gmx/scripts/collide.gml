if( vertical_collision != OFF ) {
        while ( !place_meeting (x, y+sign(vertical_speed), collision_object) ) {
            y += sign(vertical_speed);
        }
        if( vertical_speed > 0 ) {
            vertical_speed = 0;
            collision = GROUND_COLLISION;
        } else {
            vertical_speed = 0;
        }
} else {
    collision = OFF;
}

if( horizontal_collision != OFF ) {
        while ( !place_meeting (x+sign(horizontal_speed ), y, collision_object ) ) {
            x+=sign(horizontal_speed);
        }
        horizontal_speed = 0;
        //collision = HORIZONTAL_COLLISION;
}
