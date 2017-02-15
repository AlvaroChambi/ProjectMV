switch ( fading ) {
    case Fade.FADE_IN:
        with( object ) {
            if( image_alpha < 1 ) {
                var alpha_value = exp(other.current_exponent) - exp(-1);
                image_alpha = alpha_value;
                other.current_exponent += other.alpha_progression;
            } else {
                if( other.listener != undefined ) {
                    with( other.listener ) {
                        event_user( 0 );
                    }
                }
                other.fading = Fade.NOT_FADING;
            }
        }
        break;
    case Fade.FADE_OUT:
        with( object ) {
            if( image_alpha > 0 ) {
            //TODO: Not implemented fade out
                var alpha_value = exp(other.current_exponent) - exp(-1);
                image_alpha = alpha_value;
                other.current_exponent += other.alpha_progression;
            } else {
                other.fading = Fade.NOT_FADING;
            }
        }
        break;
}
