//Spawns the bullets
for(bullet_spacing=2; bullet_spacing>-3; bullet_spacing--) {
    with(instance_create(x, y + obj_pattern_manager.cell_height * 4, obj_bullet)) {
        movement_y = -obj_pattern_manager.bullet_speed * 1.3; //This pattern will be a 30% faster than other patterns
    }
}

instance_destroy();
