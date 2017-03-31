//On dark background visible
view_following_character = false;
var void_default_position = 624;

var relative_viewy_position = void_default_position - view_yview[0];

//Add void
void_instance = instance_create( 0, relative_viewy_position, ground_obj );
start_fade_in( waving_tile_obj, 0.05, self );
