var index_arg = argument0;
var time_in_seconds = argument1;
var listener_arg = argument2;

//Get alpha progression using the limit time
var frames_in_time = room_speed * time_in_seconds;
var alpha_progression_arg = 1 / frames_in_time;

background_alpha[index_arg] = 1;

var fade_in_handler = instance_create( 0, 0, fade_in_util );

with( fade_in_handler ) {
    alpha_progression = alpha_progression_arg;
    index = index_arg;
    fading = Fade.FADE_OUT;
    listener = listener_arg;
}
