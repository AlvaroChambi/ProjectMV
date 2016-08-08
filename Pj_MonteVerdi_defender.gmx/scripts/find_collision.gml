///Collsion(object)
//Vertical colision
if( place_meeting ( x, y+vertical_speed, collision_object ) ) {
    switch( sign( vertical_speed ) ) {
        case 1:
            vertical_collision = CollisionSide.down;
            break;
        case -1:
            vertical_collision = CollisionSide.up;
            break;
    }
} else {
    vertical_collision = noone;
}
//Horizontal colision
if( place_meeting ( x+horizontal_speed, y, collision_object ) ) {
    switch( sign( horizontal_speed ) ) {
        case 1:
            horizontal_collision = CollisionSide.right;
            break;
        case -1:
            horizontal_collision = CollisionSide.left;
            break;
    }       
} else {
    horizontal_collision = noone;
}
