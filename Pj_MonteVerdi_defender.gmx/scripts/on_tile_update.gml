if( trigger_projectile /*&& !on_animation*/ ) {
    //trigger shoot animation
    //on_animation_end trigger_projectile = false;
    //image_speed = image_speed/6;
    sprite_index = trigger_bullet_sprite;
    on_animation = true;
    trigger_projectile = false;
    var bullet = instance_create( x, y, obj_bullet );
    audio_play_sound(bullet_spawn, 2, false);
    with( bullet ) {
        movement_y = 8 /*bullet speed*/;
    }
} else if( !on_animation ){
    switch( animation_view_state ) {
    case AnimationView.UP_STATE:
        sprite_index = wave_up_sprite;
        break;
    case AnimationView.TOP_STATE:
        sprite_index = wave_top_sprite;
        break;
    case AnimationView.DOWN_STATE:
        sprite_index = wave_down_sprite; 
        break;
    case AnimationView.BOTTOM_STATE:
        sprite_index = wave_bottom_sprite;
        break;
    }
}
