//Move
y-=movement_y;                      

//Destroys itself when stopped by a platform
/*if( place_meeting( x, y, obj_platform_Orpheus ) ) {
    
}*/
var platform = instance_place(x, y, obj_platform_Orpheus);
if( platform != noone ) {
    audio_play_sound(bullet_explode, 2, false);
    instance_destroy();
    with( platform ) {
        //instance_destroy();
    }
}

var orpheus = instance_place(x, y, obj_Orpheus);
if( orpheus != noone ) {
    with( orpheus ) {
        on_event_received( ON_CHARACTER_DEAD );
    }
}
