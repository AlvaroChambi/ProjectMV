var bullet = instance_place( x, y, obj_bullet );
if( bullet != noone ) {
    with( bullet ) {
        other.hp -= damage;
    }
    explode_bullet( bullet );
    trigger_blink();
}

if( hp <= 0 ) {
    with( obj_orpheus ) {
        on_event_received( ON_CHARACTER_DEAD );
    }
}
