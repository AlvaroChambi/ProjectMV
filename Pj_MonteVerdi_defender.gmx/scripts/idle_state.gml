event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = LEFT;
        image_xscale = -abs( image_xscale );
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = RIGHT;
        image_xscale = abs( image_xscale );
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_SPACE_PRESSED:
        audio_play_sound(jump_3, 10, false);
        vertical_speed = -jump_initial_speed;
        jump_available = false;
        jumptimer = 0;
    case ON_FALLING:
        enter_state( OrpheusState.JUMPING_STATE );
        current_friction = air_friction;
        current_reactivity_percent = air_reactivity_percent;
        current_acceleration = air_acceleration;
        curent_max_horizontal_speed = max_air_horizontal_speed;
        break;
    case ON_CHARACTER_DEAD:
        enter_state( OrpheusState.DEATH_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = character_idle;
        impulse_vector.x = OFF;
        friction_vector.x = OFF;
        break;
}
