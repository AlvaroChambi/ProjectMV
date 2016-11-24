var orpheus;
orpheus = instance_place(x, y, obj_orpheus);
if( orpheus != noone ) {
    with( orpheus ) {
        on_event_received( ON_CHARACTER_DEAD );
    }
}
