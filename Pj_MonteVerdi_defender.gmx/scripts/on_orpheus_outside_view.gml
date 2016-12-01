var sprite_offset = sprite_get_width( character_idle ) / 2;
var view_start_x = view_xview[0];
var view_end_x = view_xview[0] + view_wview[0];
if( x - sprite_offset < view_start_x ) {
    x = view_end_x;
} else if( x + sprite_offset > view_end_x ) {
    x = view_start_x;
}
