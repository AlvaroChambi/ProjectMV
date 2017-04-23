var bullet = argument0;

with( bullet ) {
    instance_destroy();
    audio_play_sound( bullet_explode, 2, false );
}
