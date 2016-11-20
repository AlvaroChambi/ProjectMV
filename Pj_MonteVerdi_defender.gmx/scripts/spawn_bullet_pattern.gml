if(global.stop) exit;

if( bullets_in_wave == 0 ) {
    first_bullet_x = irandom( room_width );
    first_bullet_y = room_height + bullet_height/2;
    
    var first_bullet = instance_create( first_bullet_x, first_bullet_y, obj_bullet ); 
    with( first_bullet ){
        movement_y = other.bullet_speed;
    }
    
    bullets_in_wave++;
    last_bullet_x = first_bullet_x;
    alarm[0] = time_between_bullets;
} else {
    if( bullets_in_wave < bullets_per_wave ) {
        new_bullet_relative_pos = choose( RIGHT, LEFT );
        new_bullet_x = last_bullet_x + new_bullet_relative_pos * cell_width;
        
        if( new_bullet_x < 0 || new_bullet_x > room_width ) {
            new_bullet_x = last_bullet_x + ( -new_bullet_relative_pos ) * cell_width;
        }
        
        var new_bullet = instance_create( new_bullet_x, first_bullet_y, obj_bullet );
        with( new_bullet ) {
            movement_y = other.bullet_speed;
        }
        
        bullets_in_wave++;
        last_bullet_x = new_bullet_x;
        alarm[0] = time_between_bullets; 
    } else {
        bullets_in_wave = 0;
        alarm[0] = random_range(wave_separation_min, wave_separation_max);    
    }
}


