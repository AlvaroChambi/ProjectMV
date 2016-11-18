enum AnimationView {
    UP_STATE,
    TOP_STATE,
    DOWN_STATE,
    BOTTOM_STATE,
    END
}

//waving animation 
current_view_state = AnimationView.UP_STATE;
num_view_states = 4; //up->top->down->bottom
animation_offset = 0;

//30fps animation framerate reduces by this factor
animation_reduction = 2;
current_tick = 0;
//tiles should be defined when the animation instance is created
