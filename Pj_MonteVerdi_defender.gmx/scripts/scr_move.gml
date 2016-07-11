//get the inputs
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);

// React to inputs
move = key_left + key_right;
hspd = move * movespd;

//Collision
object = obj_soil;
scr_collision(object);

//Move
x+=hspd;

//Stablish velocity and acceleration
if(currentx-prevx != 0)// && place_meeting(x, y+1, obj_soil))  
{
    if(movespd <30)movespd += acceleration;         //Stablish a maximum speed 
}
if(currentx-prevx = 0)
{
    movespd = 2;                      //When stop moving go back to original speed 
}







