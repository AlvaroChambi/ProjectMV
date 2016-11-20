if( !trigger_projectile ) {
    switch( animation_view_state ) {
    case AnimationView.UP_STATE:
        sprite_index = electric_sprite_up;
        break;
    case AnimationView.TOP_STATE:
        sprite_index = electric_sprite_top;
        break;
    case AnimationView.DOWN_STATE:
        sprite_index = electric_sprite_down; 
        break;
    case AnimationView.BOTTOM_STATE:
        sprite_index = electric_sprite_bottom;
        break;
    }
} else {
    //trigger shoot animation
    //on_animation_end trigger_projectile = false;
    trigger_projectile = false;
    var bullet = instance_create( x, y, obj_bullet );
    with( bullet ) {
        movement_y = 10 /*bullet speed*/;
    }
}
