orpheus_x = global.orpheus_transition_x;
orpheus_y = global.orpheus_transition_y;

//surface = instance_create( 0, 0, blinking_surface );

camera_view = instance_create( 0, 0, moving_view );
orpheus_character = instance_create( orpheus_x, orpheus_y, obj_orpheus );
with( orpheus_character ) {
    spawn_platform();
}

void_instance = instance_create( 0, 624, ground_obj );
alarm[0] = 5 * room_speed;

if( !audio_is_playing( game_music_deerhunter ) ) {
    global.sound = audio_play_sound( game_music_deerhunter, 60, true );
    audio_sound_gain( global.sound, 0, 0 );
    audio_sound_gain( global.sound, SOUND_VOLUME_LOW, 2000 );
}
