event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = -1;
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = 1;
        break;
    case ON_SPACE_PRESSED:
        impulse_vector.y = -1;
    case NULL_EVENT:
        sprite_index = Idle_1;
        break;
}
