enum OrpheusState {
    IDLE_STATE,
    RUNNING_STATE,
    JUMPING_STATE,
    DIVING_STATE
}
state = OrpheusState.IDLE_STATE;

impulse_vector = instance_create( 0, 0, vector );
friction_vector = instance_create( 0, 0, vector );

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
