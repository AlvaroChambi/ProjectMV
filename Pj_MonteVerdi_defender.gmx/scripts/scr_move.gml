    /*//Can only accelerate on the ground
    key_right = keyboard_check(vk_right);
    key_left = -keyboard_check(vk_left);
        
    if (key_right != 0) move = 1;
    if (key_left != 0) move = -1;
    if (key_right = 0 && key_left = 0) if (movespd - 50 <= 0) movespd = 0 else movespd -= 10;
    hspd = move * movespd;*/
    
    //Diferent accelerations on the ground and in midair
    if(prevy == currenty) on_ground = true; else on_ground = false;
    
    key_right = keyboard_check(vk_right);
    key_left = -keyboard_check(vk_left);
    
    if (key_right != 0) move = 1;
    if (key_left != 0) move = -1;
    if (key_right = 0 && key_left = 0) {
        if(on_ground){
            movespd = 0;
        }else {
            if (movespd - deceleration_air <= 0) movespd = 0 else movespd -= deceleration_air;
        }
    }
    hspd = move * movespd;

//Collision
object = obj_soil;
scr_collision(object);

//Move
x+=hspd;


//Stablish velocity and acceleration
    //Can only accelerate on the ground
    /*if(currentx-prevx != 0) && (currenty - prevy == 0) {
        if(movespd <mx_movespd)movespd += acceleration;         //Stablish a maximum speed 
    }
    if(currentx-prevx == 0) movespd = initial_movespd;*/
    
    //Diferent accelerations on the ground and in midair
    /*
    if(currentx-prevx != 0) && (on_ground) {
        if(movespd < mx_movespd_plat)movespd += acceleration_plat;           
    }
    if(currentx-prevx != 0) && (!on_ground) {
        if(movespd < mx_movespd_air)movespd += acceleration_air; 
    }
    if(currentx-prevx == 0) movespd = initial_movespd;
    */
        //diferent max speeds in midair and on the ground
        if(currentx-prevx != 0) && (on_ground) {
            if(movespd < mx_movespd_plat)movespd += acceleration_plat;           
        }
        if(currentx-prevx != 0) && (!on_ground) {
            if(movespd < mx_movespd_air)movespd += acceleration_air; 
        }
        if(currentx-prevx == 0) movespd = initial_movespd;




