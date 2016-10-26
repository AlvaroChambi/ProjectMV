enum OrpheusState {
    IDLE_STATE,
    RUNNING_STATE,
    JUMPING_STATE,
    DIVING_STATE
}
state = OrpheusState.IDLE_STATE;

enum Side {
    COLLISION_UP,
    COLLISION_DOWN,
    COLLISION_RIGHT,
    COLLISION_LEFT
}
//Movement variables
impulse_vector = instance_create( 0, 0, vector );
friction_vector = instance_create( 0, 0, vector );

ground_friction = 0.2;
air_friction = 0.3;
current_friction = ground_friction;

jump_timer_default = 3;
jump_timer = 0;
jump_available = true;

current_platform = noone;
platform_avalable = true;
platform_timer = 0;

ground_reactivity_percent = 1.10;                       //Added acceleration when turning around 
air_reactivity_percent = 0.7;
current_reactivity_percent = ground_reactivity_percent; 

ground_acceleration = 2;              
air_acceleration = 5;
current_acceleration = ground_acceleration;

jump_initial_speed = 20;
gravity_acceleration = 4;

horizontal_speed = 0;
vertical_speed = 0;

max_vertical_speed = 40;

max_ground_horizontal_speed = 10;  
max_air_horizontal_speed = 27;
current_max_horizontal_speed = max_ground_horizontal_speed;

//Platform spawning variables
platform_spawn = 0;
sustain_platform = false;

//Collision variables
vertical_collision = OFF;
horizontal_collision = OFF;
collision = OFF;
