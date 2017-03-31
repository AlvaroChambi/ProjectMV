orpheus_x = global.orpheus_transition_x;
orpheus_y = global.orpheus_transition_y;

start_game_tip = undefined;

should_draw_text = false;

transition_finished = false;
view_following_character = true;

//Hide backround
background_alpha[4] = 0;

//start background music
if( !audio_is_playing( prelude ) ) {
    sound = audio_play_sound( prelude, 90, true );
    audio_sound_gain(sound, 0, 0);
    audio_sound_gain(sound, 1, 7000);
}

orpheus_character = instance_create( orpheus_x, orpheus_y, obj_orpheus_no_jump );
with( orpheus_character ) {
    can_jump = false;
}

base_platform = instance_create( 0, 367, wall );
with( base_platform ) {
    image_alpha = 0;
}

//Start light appearing animation 
animated_light = instance_create( 0, 0, light_object );
start_fade_in( animated_light, 0.01, undefined );

//Start black background fading
var black_background_var = 2;
var degrading_background_var = 3;
start_background_fade_out( black_background_var, 7, self );
start_background_fade_out( degrading_background_var, 7, undefined );
