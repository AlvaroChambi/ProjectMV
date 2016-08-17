//Vertical colision
vertical_collided_object = instance_place( x, y + vertical_speed, collision_object )
if( vertical_collided_object != noone ) {
    switch( sign( vertical_speed ) ) {
        case DOWN:
            vertical_collision = Side.COLLISION_DOWN;
            break;
        case UP:
            vertical_collision = Side.COLLISION_UP;
            break;
    }
} else {
    vertical_collision = noone;
}

//Horizontal colision
horizontal_collided_object = instance_place( x + horizontal_speed, y, collision_object )
if( horizontal_collided_object != noone ) {
    switch( sign( horizontal_speed ) ) {
        case RIGHT:
            horizontal_collision = Side.COLLISION_RIGHT;
            break;
        case LEFT:
            horizontal_collision = Side.COLLISION_LEFT;
            break;
    }       
} else {
    horizontal_collision = noone;
}
