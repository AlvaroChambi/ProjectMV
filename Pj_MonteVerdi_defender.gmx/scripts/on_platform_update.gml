if( !sustain ) {
    time++;
    if ( time == life_time ) {
        instance_destroy();
    }
}

