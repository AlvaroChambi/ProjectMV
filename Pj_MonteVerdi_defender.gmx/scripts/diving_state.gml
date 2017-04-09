event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = LEFT;
        image_xscale = -abs( image_xscale );
        if ( horizontal_speed > 0 ) {
            impulse_vector.x *= current_reactivity_percent;
        }
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = RIGHT;
        image_xscale = abs( image_xscale );
        if( horizontal_speed < 0 ) {
            impulse_vector.x *= current_reactivity_percent;
        }
        break;
    case ON_LEFT_UNPRESSED:
    case ON_RIGHT_UNPRESSED:
        impulse_vector.x = OFF;
        break;
    case ON_SPACE_PRESSED:
        if( jump_available ) {
            vertical_speed = -jump_initial_speed;
            jump_available = false;
            jump_timer = 0;
        } else {
            spawn_platform();
            jump_timer = jump_timer_default;                                                               //Any smaller number here wouldn`t work. Not sure if it would just leave a lapse of time too short or if it just doesn`t work. 
            jump_available = true;
        }
        break;
    case ON_GROUND_COLLISION:
        enter_state( OrpheusState.IDLE_STATE );
        image_speed = 1;
        jump_available = true;
        jump_timer = jump_timer_default;

        current_friction = ground_friction;
        current_reactivity_percent = ground_reactivity_percent;
        current_acceleration = ground_acceleration;
        curent_max_horizontal_speed = max_ground_horizontal_speed;
        break;
    case ON_ORPHEUS_STOPPED:
        enter_state( OrpheusState.JUMPING_STATE );
        break;
    case ON_ANIMATION_END:
        image_speed = 0;
        image_index = image_number - 1;
        break; 
    case ON_CHARACTER_DEAD:
        image_speed = 1;
        enter_state( OrpheusState.DEATH_STATE );
        break;
    case ON_DAMAGE_RECEIVED:
        trigger_blink();
        if( hp > 0 ) {
            hp--;
            if( hp == 0 ) {
                on_event_received( ON_CHARACTER_DEAD );
            }
        }
        break;
    case ON_ENTER_STATE:
        sprite_index = character_jumping;
        break;
}
