current_tick ++;  //iterate over 4 tiles states and animate according (up->top->down->bottom)
if( current_tick == animation_reduction ) {
    current_tick = 0;
    for( i = 0; i < array_length_1d( tiles ); i++ ) {
        var current_id = tiles[i];
        var view_state = (current_view_state + animation_offset) mod num_view_states; 
        current_view_state++;
        if( current_view_state == AnimationView.END  ) {
            current_view_state = AnimationView.UP_STATE;
        }
        
        with( current_id ) {
            animation_view_state = view_state;
        }
    }  
    animation_offset++;
    if( animation_offset == num_view_states ) {
        animation_offset = 0;
    }  
}
