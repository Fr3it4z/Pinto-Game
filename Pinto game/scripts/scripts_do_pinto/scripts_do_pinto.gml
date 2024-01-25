// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_pinto_colisao(){
	 if place_meeting(x + hspd, y, obj_wall){
	while !place_meeting(x + sign(hspd), y, obj_wall){
		    x += sign (hspd);
	}
	hspd = 0;
	}
	
	x += hspd;
	
	if place_meeting(x, y + vspd, obj_wall){
	while !place_meeting(x, y + sign(vspd), obj_wall){
		    x += sign (vspd);
	}
	vspd = 0;
	}
	
	y += vspd;
	

}
function scr_pinto_correndo(){
     right = keyboard_check(ord("D"))

up = keyboard_check(ord("W"))
left = keyboard_check(ord("A"))
down = keyboard_check(ord("S"))

var _xx = right - left; 
var _yy = down - up;

if _xx != 0 or _yy != 0{
	

dir = point_direction(x ,y ,x + _xx, y + _yy);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

scr_pinto_colisao();

}

dir= floor((point_direction(x ,y, mouse_x, mouse_y) + 45)/90);

if  _xx == 0 and _yy == 0{
	switch dir{
default:
sprite_index = spr_parado_direita;
break;
case 1:

break;
case 2:
sprite_index = spr_parado_esquerda;
break;
case 3:
sprite_index = spr_pinto_idle;
break;

}

}else{
switch dir{

default:
sprite_index = spr_correndo_direita;
break;
case 1:

break;
case 2:
sprite_index = spr_correndo_esquerda;
break;
case 3:
sprite_index = spr_correndo_baixo;
break;

}
}
if stamina >= 30{
if keyboard_check_pressed(vk_shift){
	stamina -= 30;
alarm[0] = 8;
alarm[1] = 180;
dash_dir = point_direction(x, y, mouse_x, mouse_y);
estado = scr_pinto_dash;
}
}

if mouse_check_button_pressed(mb_left){
	image_index = 0;
	
	switch dir{

default:
sprite_index = spr_pinto_attdireita;
break;
case 1:

break;
case 2:
sprite_index = spr_pinto_attesquerda;
break;
case 3:
sprite_index = spr_pinto_attbaixo;
break;

}
estado = scr_pinto_atacando;
}

}

function scr_pinto_dash(){
	if(max_stamina > 0){
	stamina -=1;
	}
	tomardano = false;
	
	hspd = lengthdir_x(dash_speed, dash_dir);
	vpsd = lengthdir_y(dash_speed, dash_dir);
	
	x += hspd;
	y += vpsd;
	
	var _inst = instance_create_layer(x, y, "Instances" , obj_dash);
	_inst.sprite_index = sprite_index;
}

function scr_pinto_atacando(){
	
	if image_index >= 1{
	
	if atacar == false{
	
	switch dir{

default:
instance_create_layer(x + 10, y, "Instances", obj_hitbox);
break;
case 1:
instance_create_layer(x, y - 10, "Instances", obj_hitbox);
break;
case 2:
instance_create_layer(x - 10, y, "Instances", obj_hitbox);
break;
case 3:
instance_create_layer(x, y + 10, "Instances", obj_hitbox);
break;

}
atacar = true;
}
}
  if fim_da_animacao(){
	   estado = scr_pinto_correndo;
	   atacar = false;
 
}
}

function scr_pinto_hit(){
	
	if alarm[2] > 0 {
	
    hspd = lengthdir_x(3, empurrar_dir);
	vspd = lengthdir_y(3, empurrar_dir);
	
	scr_pinto_colisao();
	}else{
	 estado = scr_pinto_correndo;	
	}
}
