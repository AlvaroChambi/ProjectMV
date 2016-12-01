//update view and following objects position
var speed_y = vertical_speed;

last_y = view_yview[0];
view_yview[0] -= vertical_speed;

var offset_y = view_yview[0] - last_y;

for( i = 0; i < array_length_1d( moving_objects ); i++ ) {
    with( moving_objects[i] ) {
        y += offset_y; 
        y += other.viewy_offset;
    }    
}
other.viewy_offset = 0;
