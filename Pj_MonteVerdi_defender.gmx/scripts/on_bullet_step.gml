if(global.stop) exit;

//Move
y-=movement_y;                      

//Destroys itself when stopped by a platform
if( place_meeting( x, y, obj_platform_Orpheus ) ) {
    audio_play_sound(boom_0, 2, false);
    instance_destroy();
}
