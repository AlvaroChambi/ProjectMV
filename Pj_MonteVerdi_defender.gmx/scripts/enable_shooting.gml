var ground_instance = argument0;
var shooting_enabled = argument1;

with( ground_instance ) {
    shooting_manager = instance_create(0, 0, waves_manager);
    with( shooting_manager ) {
        tiles = other.tiles;
    }
}

