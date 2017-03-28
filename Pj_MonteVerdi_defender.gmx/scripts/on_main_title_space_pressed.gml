if( !on_fading_out && can_start_game ) {
   start_fade_out( orpheus_title, 0.05, self ); 
   on_fading_out = true;
   start_fade_out( start_game_tip, 0.1, undefined );
   
   //fade out music
   audio_sound_gain(entry_music_audio, 0, 1000);
}
