var index_founded = false;

for ( var i = 0; i < array_length_1d( sound_player.key_index ); i++ ) {
    if( sound_player.key_index[i] == obj_Orpheus.image_index ) {
        index_founded = true;
    }
}

if( index_founded ) {
    audio_play_sound( sound_player.sound_index, 10, false );
}
