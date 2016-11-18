//handles waving animation for each tile defined
current_tick++;
if( current_tick == animation_reduction ) {
    current_tick = 0;
    for( i = 0; i < array_length_1d( units ); i++ ) {
        current_id = units[i];
        with( current_id ) {
            current_view++;
            if( current_view > 3 ) {
                current_view = 0;
            }
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
    }    
}
