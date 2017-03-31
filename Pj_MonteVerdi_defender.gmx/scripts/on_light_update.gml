var orpheus;
orpheus = instance_place( x, y, obj_orpheus );
if( orpheus != noone ) {
    with( orpheus ) {
        on_event_received( ON_CHARACTER_DEAD );
    }
}

var bullet = instance_place( x, y, obj_bullet );
if( bullet != noone ) {
    with( bullet ) {
        other.hp -= damage;
        instance_destroy();
    }
    sprite_index = light_sprite_animated;
}

if( hp <= 0 ) {
    with( obj_orpheus ) {
        on_event_received( ON_CHARACTER_DEAD );
    }
}
