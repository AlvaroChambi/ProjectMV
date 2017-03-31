//move view downwards togheter with orpheus
var vertical_speed_var = 0;
with( orpheus_character ) {
    vertical_speed_var = vertical_speed;
}

if(view_following_character) {
    view_yview[0] += vertical_speed_var;
    light_object.y += vertical_speed_var;
    background_y[3] += vertical_speed_var;
    background_y[4] += vertical_speed_var;

    var increment = 4 / (640 / room_speed);

    if( background_y[3] < view_yview[0] + view_hport[0] ) {
        background_y[3] += increment;
        background_yscale[3] += 0.01;
    }
}
