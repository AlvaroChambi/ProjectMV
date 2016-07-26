
//Get inputs
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);

if (key_right) {move = 1;}                         //if right the movement_speed is positive
if (key_left) {move = -1;}                         //if left the movement_speed is negative
if (!key_right && !key_left) {move = 0}                   //if none:

if (move != 0) {
    if (sign(move) != sign(hspd)) reactivity_precent = 2 else reactivity_percent = 1;
    if (abs(hspd + acceleration * move * reactivity_percent) < max_speed) hspd += acceleration * move * reactivity_percent; else hspd = (max_speed) * move;  
} else {
    if (sign(hspd + deceleration * -sign(hspd)) == sign(hspd))hspd += deceleration * -sign(hspd); else hspd = 0;
}

x += hspd;
