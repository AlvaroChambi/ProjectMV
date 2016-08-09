enum OrpheusState {
    IDLE_STATE,
    RUNNING_STATE,
    JUMPING_STATE,
    DIVING_STATE
}
state = OrpheusState.IDLE_STATE;

enum CollisionSide {
    up,
    down,
    right,
    left
}

impulse_vector = instance_create( 0, 0, vector );
friction_vector = instance_create( 0, 0, vector );

terrain_friction = 0.25;


new_platform = OFF;



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

//Platform spawning variables
platform_spawn = 0;
sustain_platform = false;

//Collision variables
vertical_collision = OFF;
horizontal_collision = OFF;
collision = OFF;
