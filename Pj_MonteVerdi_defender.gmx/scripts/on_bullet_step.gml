//Move
y-=movement_y;                      

//Destroys itself when stopped by a platform
if( place_meeting( x, y, obj_platform_orpheus ) ) {
    audio_play_sound(bullet_explode, 2, false);
    instance_destroy();
}

var orpheus;
orpheus = instance_place(x, y, obj_orpheus);
if( orpheus != noone ) {
    with( orpheus ) {
        on_event_received( ON_CHARACTER_DEAD );
    }
}
