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

terrain_friction = 0.5;

jump_timer_default = 3;
jump_timer = 0;
jump_available = true;

current_platform = noone;
platform_avalable = true;
platform_timer = 0;

reactivity_percent = 1.75;   //Added acceleration when turning around 

acceleration = 15;              
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
