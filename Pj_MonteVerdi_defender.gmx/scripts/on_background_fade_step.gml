if( index != undefined ) {
    switch ( fading ) {
    case Fade.FADE_IN:
        if( background_alpha[index] < 1 ) {
                var alpha_value = exp(current_exponent) - exp(-1);
                background_alpha[index] = alpha_value;
                current_exponent += alpha_progression;
            } else {
                index = undefined;
                if( listener != undefined ) {
                    with( listener ) {
                        event_user( 0 );
                    }
                }
                other.fading = Fade.NOT_FADING;
            }
        break;
    case Fade.FADE_OUT:
        if( current_exponent <= 0 ) {
                var alpha_value = exp(current_exponent) - exp(-1);
                background_alpha[index] = 1 - alpha_value;
                current_exponent += alpha_progression;
            } else {
                background_alpha[index] = 0;
                index = undefined;
                if( listener != undefined ) {
                    with( listener ) {
                        event_user( 1 );
                    }
                }
                fading = Fade.NOT_FADING;
            }
        break;
    }
}
