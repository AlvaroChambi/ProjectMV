if( !sustain ) {
    time++;
    if ( time == life_time ) {
        instance_destroy();
    }
}

//Increased bottom boundary virtually to solve visual artifact 
//that let the bullet go through the platform on a collision 
var collision_boundary_offset = 10;
var bullet = instance_place( x, y + 10, obj_bullet );
if( bullet != noone ) {
    with( bullet ) {
        instance_destroy();    
    }
    audio_play_sound( bullet_explode, 2, false );
}
