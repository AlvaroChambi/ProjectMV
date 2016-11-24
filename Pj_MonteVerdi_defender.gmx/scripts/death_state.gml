event = argument0;

switch( event ) {
   case ON_ANIMATION_END:
        image_speed = 0;
        image_index = image_number - 1;
        audio_stop_sound( background_music );
        /*with( projectiles_manager ) {
            instance_destroy();
        }
        with( waving_animation ) {
            instance_destroy();
        }*/
        break;
   case ON_SPACE_PRESSED:
        room_restart();
        break;
   case ON_ENTER_STATE:
        image_speed = image_speed/2;
        sprite_index = character_death;
        audio_play_sound(death_sound, 4, false);
        horizontal_speed = 0;
        vertical_speed = 0;
        gravity_acceleration = 0;
        impulse_vector.x = OFF;
        friction_vector.x = OFF;
        break;
}
