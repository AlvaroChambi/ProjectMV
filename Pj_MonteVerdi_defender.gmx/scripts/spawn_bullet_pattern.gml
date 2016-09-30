if(global.stop) exit;

new_bullet = instance_create(irandom(room_width), room_height + obj_bullet.sprite_height/2, obj_bullet) 
with( new_bullet ){
    movement_y = 35;
}
//Restarts the alarm to create another pattern
alarm[0] = random_range(min_time, max_time);
