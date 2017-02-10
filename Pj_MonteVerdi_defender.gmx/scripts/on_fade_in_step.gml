if( object != undefined && alpha_progression != undefined ) { //if is initialized
    with( object ) {
        if( image_alpha < 1 ) {
            image_alpha += other.alpha_progression;
        }
    }
}
