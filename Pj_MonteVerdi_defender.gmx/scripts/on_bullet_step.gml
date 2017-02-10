//Move
y-=global.bullet_speed;                      

for(i = 0; i < array_length_1d( colliding_objects ); i++) {
    //Destroys itself when stopped by a platform
    var platform = instance_place(x, y, colliding_objects[i]);
    if( platform != noone ) {
        audio_play_sound(bullet_explode, 2, false);
        instance_destroy();
        with( platform ) {
            //instance_destroy();
    }
}
}

var orpheus;
orpheus = instance_place(x, y, obj_orpheus);

if( orpheus != noone ) {
    with( orpheus ) {
        on_event_received( ON_CHARACTER_DEAD );
    }
}
