var background_index_var = argument0;
var alpha_progression_arg = argument1;
var listener_var = argument2;

background_alpha[background_index_var] = 0;

var fade_in_handler = instance_create( 0, 0, fade_in_util );

with( fade_in_handler ) {
    alpha_progression = alpha_progression_arg;
    index = background_index_var;
    fading = Fade.FADE_IN;
    listener = listener_var;
}
