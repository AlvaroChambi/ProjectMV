//Variables
on_fading_out = false;
can_start_game = false;
//setup input handler
input_handler = instance_create(0, 0, android_input_handler);
with( input_handler ) {
    persistent = true
}

//start background music
if( !audio_is_playing( entry_screen_music ) ) {
    entry_music_audio = audio_play_sound( entry_screen_music, 90, false );
}
//Create Orpheus title (will already be added in the room
//  position (8, 34) center-up
orpheus_title = instance_create( 8, 34, title_object );
//  start fade in for the title (exponential fade in)
start_fade_in( orpheus_title, 0.01, self );

//Create Opheus character: character standing in the middle of the screen
//  position (178, 335) center
//  responds to input normally
orpheus_charater = instance_create( 178, 335, obj_orpheus );
start_fade_in( orpheus_charater, 0.03, undefined );

base_platform = instance_create( 0, 367, wall );
