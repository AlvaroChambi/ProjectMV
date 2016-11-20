//Move
y-=movement_y;                      

//Destroys itself when stopped by a platform
if( place_meeting( x, y, obj_platform_Orpheus ) ) {
    audio_play_sound(boom_0, 2, false);
    instance_destroy();
}

var orpheus;
orpheus = instance_place(x, y, obj_Orpheus);
if( orpheus != noone ) {
    with( orpheus ) {
        on_event_received( ON_CHARACTER_DEAD );
    }
}
