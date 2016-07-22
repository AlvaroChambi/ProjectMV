//Diferent accelerations on the ground and in midair
if(prevy == currenty) on_ground = true; else on_ground = false;     //Check if it's on the ground

//Get inputs
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);

if (key_right) move = 1;                         //if right the movement_speed is positive
if (key_left) move = -1;                         //if left the movement_speed is negative
if (!key_right && !key_left) {                   //if none:
    if(on_ground){                         
        movespd = 0;                             //On the ground it stops inmideatly 
    }else { 
        if (movespd - deceleration_air <= 0) movespd = 0 else movespd -= deceleration_air;  //In mid air it stops slowly
     }
}


hspd = move * movespd;

//Collision
object = obj_soil;
scr_collision(object);

//Move
x+=hspd;


//Stablish velocity based on acceleration

//diferent max speeds in midair and on the ground

//On gorind
if(currentx-prevx != 0) && (on_ground) {
    if(movespd < mx_movespd_plat)movespd += acceleration_plat;           
}

//In mid air
if(currentx-prevx != 0) && (!on_ground) {
    if(movespd < mx_movespd_air)movespd += acceleration_air; 
}
if(currentx-prevx == 0) movespd = initial_movespd;




