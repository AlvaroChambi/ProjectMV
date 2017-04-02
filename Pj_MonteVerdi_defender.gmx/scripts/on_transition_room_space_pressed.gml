if(!transition_finished) {
    with( orpheus_character  ) {
        if( can_jump ) {
            other.transition_finished = true;
            other.should_draw_text = false;
            
            global.orpheus_transition_x = x;
            global.orpheus_transition_y = y;
            
            if( audio_is_playing( prelude ) ) {
                audio_sound_gain(other.sound, 1, 0);
                audio_sound_gain(other.sound, 0, 10000);
            }    
            //start void animation and soundtrack
            start_background_fade_in( 4, 2, other );
            if( !audio_is_playing( game_music_deerhunter ) ) {
                global.sound = audio_play_sound( game_music_deerhunter, 60, true );
                audio_sound_gain( global.sound, 0, 0 );
                audio_sound_gain( global.sound, SOUND_VOLUME_LOW, 5000 );
            }
        }       
    }
}
