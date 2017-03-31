if( !sustain ) {
    time++;
    if ( time == life_time ) {
        instance_destroy();
    }
}

var bullet = instance_place( x, y, obj_bullet );
if( bullet != noone ) {
    audio_play_sound( bullet_explode, 2, false );
    with( bullet ) {
        instance_destroy();    
    }
}
