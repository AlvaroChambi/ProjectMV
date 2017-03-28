//void fade in finished go to game start room
var relative_viewy_position = orpheus_character.y - view_yview[0];
global.orpheus_transition_x = orpheus_character.x;
global.orpheus_transition_y = relative_viewy_position;

room_goto( room_2 );
