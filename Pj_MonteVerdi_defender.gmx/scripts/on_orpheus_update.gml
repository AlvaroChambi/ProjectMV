friction_vector.x = -sign( horizontal_speed );

impulse_modifier = current_acceleration * impulse_vector.x;
friction_modifier = abs( horizontal_speed ) * current_friction * friction_vector.x;

new_horizontal_speed = horizontal_speed + impulse_modifier + friction_modifier; 

if( abs( new_horizontal_speed ) <= current_max_horizontal_speed * current_friction && impulse_modifier == 0) {
    new_horizontal_speed = 0;
}


if( abs( new_horizontal_speed ) <= current_max_horizontal_speed ) {
    horizontal_speed = new_horizontal_speed;
} else {
    horizontal_speed = current_max_horizontal_speed * impulse_vector.x;
}

if( vertical_speed < max_vertical_speed ) {
    vertical_speed += gravity_acceleration;
}

//update speed on collision
var hasCollided = false;
var isFalling = false;

collision_object = wall;
find_collision( collision_object );
collide();
if( vertical_collision == Side.COLLISION_DOWN ) {
    on_event_received( ON_GROUND_COLLISION );
    hasCollided = true;
} else {
    isFalling = true;
}

collision_object = obj_platform_orpheus;
find_collision( collision_object );

if( instance_exists( obj_platform_orpheus ) ) {
    update_current_platform();
}

if( vertical_collision == Side.COLLISION_DOWN ) {
    hasCollided = true;
    if( !place_meeting( x, y, collision_object ) ) {
        horizontal_collision = noone;
        collide();    
        on_event_received( ON_GROUND_COLLISION );
    }
}

if( !hasCollided && isFalling ) {
    on_event_received( ON_FALLING );
}


if( horizontal_speed == 0 ) {
    on_event_received( ON_ORPHEUS_STOPPED );
}

if( impulse_vector.x == 0 ) {
    if( keyboard_check( vk_left ) ) {
        on_event_received( ON_LEFT_PRESSED );
    } else if( keyboard_check( vk_right ) ) {
        on_event_received( ON_RIGHT_PRESSED );
    }
}
x += horizontal_speed;
y += vertical_speed;

if( state = OrpheusState.JUMPING_STATE || state = OrpheusState.DIVING_STATE ) {
    if( jump_timer > 0 ){
        jump_timer--;
    } else {
        jump_available = false;
    }
}

var bullet = instance_place( x, y, obj_bullet );
if( bullet != noone ) {
    with( bullet ) {
        instance_destroy();
    }
    trigger_blink();
    on_event_received( ON_CHARACTER_DEAD );
}

var light = instance_place( x, y, light_object );
if( light != noone ) {
    trigger_blink();
    on_event_received( ON_CHARACTER_DEAD );
}
