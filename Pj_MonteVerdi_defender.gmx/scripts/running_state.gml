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
        audio_play_sound(jump_3, 10, false);
        vertical_speed = -jump_initial_speed;
        jump_available = false;
        jumptimer = 0;
    case ON_FALLING:
        enter_state( OrpheusState.DIVING_STATE );
        stop_sound( sound );
        current_friction = air_friction;
        current_reactivity_percent = air_reactivity_percent;
        current_acceleration = air_acceleration;
        curent_max_horizontal_speed = max_air_horizontal_speed;
        break;
    case ON_ORPHEUS_STOPPED:
        enter_state( OrpheusState.IDLE_STATE );
        stop_sound( sound );
        break;
    case ON_CHARACTER_DEAD:
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
        sprite_index = character_run;
        key_animation_index[0] = 0;
        key_animation_index[1] = 5;
        key_animation_index[2] = 10;
        key_animation_index[3] = 15;
        sound = play_sound( step_sound, key_animation_index );
        break;
}
