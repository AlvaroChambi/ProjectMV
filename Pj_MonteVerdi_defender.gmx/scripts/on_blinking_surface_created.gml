count = 0;
blink_lapse = 3;
blink_count = 4;
blink_tick = false;
blinking = false;

displayWidth = display_get_width();
displayHeight = display_get_height();
scaleH = displayHeight/room_height;
scaleW = displayWidth/room_width;

application_surface_draw_enable( false );
