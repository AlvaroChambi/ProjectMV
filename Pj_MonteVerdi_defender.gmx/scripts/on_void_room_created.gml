orpheus_x = global.orpheus_transition_x;
orpheus_y = global.orpheus_transition_y;

camera_view = instance_create( 0, 0, moving_view );
orpheus_character = instance_create( orpheus_x, orpheus_y, obj_orpheus );
with( orpheus_character ) {
    spawn_platform();
}
void_instance = instance_create( 0, 624, ground_obj );
alarm[0] = 5 * room_speed;
