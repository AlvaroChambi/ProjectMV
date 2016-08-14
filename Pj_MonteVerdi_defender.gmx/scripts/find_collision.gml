///Collsion(object)
//Vertical colision
vertical_collided_object = instance_place( x, y + vertical_speed, collision_object )
if( vertical_collided_object != noone ) {
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
horizontal_collided_object = instance_place( x + horizontal_speed, y, collision_object )
if( horizontal_collided_object != noone ) {
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
