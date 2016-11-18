//update view and following objects position
var speed_y = vertical_speed;
for( i = 0; i < array_length_1d( moving_objects ); i++ ) {
    with( moving_objects[i] ) {
        y -= speed_y;    
    }    
}

view_yview[0] -= vertical_speed;
