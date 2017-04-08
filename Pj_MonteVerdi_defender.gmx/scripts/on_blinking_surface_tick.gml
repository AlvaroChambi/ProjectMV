if( count < blink_count ) {
    blinking = true;
    blink_tick = !blink_tick;
    alarm[0] = blink_lapse;
    count ++;
} else {
    blinking = false;
}
