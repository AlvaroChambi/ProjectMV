collided_bullet = instance_place( x, y, obj_bullet );

if( collided_bullet ) {              //If hit by a bullet 
    with( collided_bullet ) {
        instance_destroy();
    }
    
    damage++;                                     //Increase damage
    if( damage == 6 ) {
        global.stop = true;
        instance_destroy();
    }
}

