//Preasure!
if (vspd < mxvspd) vspd += grav;        //Gravity

//get the inputs
key_jump = keyboard_check(vk_space);
       
//Can jump?
if ((prevy == currenty) && (key_jump)){ //If you are pressind the space bar and hadn't move vertically in the last step
    vspd -= jumpspd                     //Jump                
}                                   

//Collision
object = obj_soil;         //From now on I'll first asign a variable that contains the object with which I'll calculate collision
scr_collision(object);     //Then the script will use that object
object = obj_platform_Orpheus;
scr_collision(object);     

//Move
y+= vspd

