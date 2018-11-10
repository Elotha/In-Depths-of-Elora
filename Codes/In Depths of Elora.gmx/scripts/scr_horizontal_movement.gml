///Horizontal Movement
//
//argument0: bu kodu karakter mi kullanıyor?

{
    if argument0
        {
        block_hor = collision_rectangle(x,y-19,x+((abs(sprite_xoffset)+8)*sign(h_speed))+h_speed,y+abs(sprite_yoffset),obj_block_parent,false,true); 
        block_hor2 = collision_rectangle(x,y-19,x+((abs(sprite_xoffset)+8)*sign(h_speed))+h_speed,y+abs(sprite_yoffset)-4,obj_block_parent,false,true); 
        if !place_meeting(x+h_speed+(8*dir_sign),y,block_hor) && !place_meeting(x+h_speed+(8*sign(h_speed)),y,block_hor2) //Sağ ya da sol serbest mi?
            {
            x += h_speed;
            }
        }
    else
        {
        block_hor = collision_rectangle(x,bbox_top,x+((abs(sprite_xoffset)+8)*sign(h_speed))+h_speed,bbox_bottom,obj_block_parent,false,true); 
        block_hor2 = collision_rectangle(x,bbox_top,x+((abs(sprite_xoffset)+8)*sign(h_speed))+h_speed,bbox_bottom-4,obj_block_parent,false,true); 
        if !place_meeting(x+h_speed+(8*sign(h_speed)),y,block_hor) && !place_meeting(x+h_speed+(8*sign(h_speed)),y,block_hor2) //Sağ ya da sol serbest mi?
            {
            x += h_speed;
            }
        }
}
