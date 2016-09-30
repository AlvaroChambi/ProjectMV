scr_stairs_parameters();

//Spawns the bullets
for(bullet_spacing=2; bullet_spacing>-3; bullet_spacing--) {
    with(instance_create(x - horizontal_space * obj_pattern_manager.cell_width/2 * bullet_spacing, y - vertical_space * obj_pattern_manager.cell_height/2 * bullet_spacing, obj_bullet)) {
        movement_y =- obj_pattern_manager.bullet_speed;
    }
}
instance_destroy();
