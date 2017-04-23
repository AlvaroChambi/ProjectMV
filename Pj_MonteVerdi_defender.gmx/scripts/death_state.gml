event = argument0;

switch( event ) {
   case ON_ANIMATION_END:
        image_speed = 0;
        image_index = image_number - 1;
        break;
   case ON_SPACE_PRESSED:
        hp = ORPHEUS_MAX_HP;
        room_restart();
        break;
   case ON_DAMAGE_RECEIVED:
        trigger_blink();
        break;
   case ON_ENTER_STATE:
        image_speed = image_speed/2;
        sprite_index = character_death;
        audio_play_sound(death_sound, 4, false);
        audio_stop_sound( game_music_deerhunter );
        horizontal_speed = 0;
        vertical_speed = 0;
        gravity_acceleration = 0;
        impulse_vector.x = OFF;
        friction_vector.x = OFF;
        break;
}
