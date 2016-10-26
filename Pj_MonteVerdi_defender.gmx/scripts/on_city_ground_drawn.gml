draw_self();

//Draws red over itself based on the damage taken
switch(damage){
    case 1: draw_sprite_ext(spr_trail, 0, x, y, 53, 2, 0, c_white, 0.3) break;
    case 2: draw_sprite_ext(spr_trail, 0, x, y, 53, 2, 0, c_white, 0.5) break;
    case 3: draw_sprite_ext(spr_trail, 0, x, y, 53, 2, 0, c_white, 0.7) break;
    case 4: draw_sprite_ext(spr_trail, 0, x, y, 53, 2, 0, c_white, 0.9) break;
    case 5: draw_sprite_ext(spr_trail, 0, x, y, 53, 2, 0, c_white, 1) break;
    default: break;
} 
