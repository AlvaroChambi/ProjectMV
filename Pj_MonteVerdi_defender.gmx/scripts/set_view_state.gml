var unit_id = argument[0];
last_created++;
if( last_created > num_view_states ) {
    last_created = 0;
}
var current = last_created;

with( unit_id ) {
    current_view = current;
    switch( current_view ) {
        case 0:
            sprite_index = electric_sprite_up;
            break;
        case 1:
            sprite_index = electric_sprite_top;
            break;
        case 2:
            sprite_index = electric_sprite_down;
            break;
        case 3:
            sprite_index = electric_sprite_bottom;
            break;
    }
}
