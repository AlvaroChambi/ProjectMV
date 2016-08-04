collision_object = argument0;

///Collsion(object)
//Vertical colision
if( place_meeting ( x, y+vertical_speed, collision_object ) ) {
    while ( !place_meeting (x, y+sign(vertical_speed ), collision_object) ) {
        y += sign( vertical_speed );
    }
 
    if( vertical_speed > 0 ) {
        vertical_speed = 0;
        return GROUND_COLLISION;
    } else {
        vertical_speed = 0;
    }
}
//Horizontal colision
if( place_meeting ( x+horizontal_speed, y, collision_object ) ) {
    while ( !place_meeting (x+sign(horizontal_speed ), y, collision_object ) ) {
        x+=sign(horizontal_speed);
    }
    
    horizontal_speed = 0;
    return HORIZONTAL_COLLISION;
}
