enum OrpheusState {
    IDLE_STATE,
    RUNNING_STATE,
    JUMPING_STATE,
    DIVING_STATE
}
state = OrpheusState.IDLE_STATE;

impulse_vector = ds_map_create();
ds_map_add( impulse_vector, "x_axis", OFF );
ds_map_add( impulse_vector, "x_axis", OFF );

friction_vector = ds_map_create();
ds_map_add( friction_vector, "x_axis", OFF );
ds_map_add( friction_vector, "x_axis", OFF );


terrain_friction = 0.25;
//Added acceleration when turning around
reactivity_percent = 1.5;

acceleration = 15;              
deceleration = 10;
jump_initial_speed = 40;
gravity_acceleration = 4;

horizontal_speed = 0;
vertical_speed = 0;

max_vertical_speed = 40;
max_horizontal_speed = 40;  
