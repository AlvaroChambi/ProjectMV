if(global.stop) exit;

if( !sustain ) {
    time++;
    if ( time == life_time ) {
        instance_destroy();
    }
}

