var object_arg = argument0;
var alpha_progression_arg = argument1;
var listener_var = argument2;

with( object_arg ) {
    image_alpha = 0;
}

var fade_in_handler = instance_create( 0, 0, fade_in_util );

with( fade_in_handler ) {
    alpha_progression = alpha_progression_arg;
    object = object_arg;
    fading = Fade.FADE_IN;
    listener = listener_var;
}
