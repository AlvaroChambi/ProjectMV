///Collsion(object)
//Vertical colision
if(place_meeting (x, y+vspd, object))
{
    while (!place_meeting (x, y+sign(vspd), object)) y+=sign(vspd);
    vspd = 0;
}
//Horizontal colision
if(place_meeting (x+hspd, y, object))
{
    while (!place_meeting (x+sign(hspd), y, object)) x+=sign(hspd);
    hspd = 0;
}
