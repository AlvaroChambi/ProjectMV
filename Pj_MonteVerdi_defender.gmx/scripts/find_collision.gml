///Collsion(object)
//Vertical colision
if( place_meeting ( x, y+vertical_speed, collision_object ) ) {
    switch( sign( vertical_speed ) ) {
        case 1:
            vertical_collision = "down";
            break;
        case -1:
            vertical_collision = "up";
            break;
    }
} else {
    vertical_collision = OFF;
}
//Horizontal colision
if( place_meeting ( x+horizontal_speed, y, collision_object ) ) {
    switch( sign( horizontal_speed ) ) {
        case 1:
            horizontal_collision = "right";
            break;
        case -1:
            horizontal_collision = "left";
            break;
    }       
} else {
    horizontal_collision = OFF;
}
