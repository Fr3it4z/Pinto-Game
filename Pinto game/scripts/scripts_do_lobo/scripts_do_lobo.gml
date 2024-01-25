// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lobo_checar_pinto(){
        if distance_to_object(obj_pinto) <= dist_aggro{
		 estado = scr_lobo_perseguindo;	
		}
}


function scr_lobo_colisao(){
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




function scr_lobo_escolher_estado(){
	scr_lobo_checar_pinto();
       prox_estado = choose(scr_lobo_correndo, scr_lobo_parado);
	   
	   if prox_estado == scr_lobo_correndo{
		   estado = scr_lobo_correndo;
		   dest_x = irandom_range(0, room_width);
		   dest_y = irandom_range(0, room_height);
	   }else if prox_estado == scr_lobo_parado{
		    estado = scr_lobo_parado;
		   
	   }

}

function scr_lobo_correndo(){
scr_lobo_checar_pinto();

if distance_to_point(dest_x, dest_y) > vspd{
   var _xx = right - left; 
   var _yy = down - up;
	var _dir = point_direction(x, y, dest_x, dest_y);
	hspd = lengthdir_x(velocidade, _dir);
	vspd = lengthdir_y(velocidade, _dir);
	
	scr_lobo_colisao();
    }else{
	 x = dest_x;
	 y = dest_y;
		
	}
	dirlobo = floor((point_direction(x ,y, dest_x, dest_y) + 45)/90);

if  _xx == 0 and _yy == 0{
	switch dirlobo{
default:
sprite_index = spr_lobo_correndoD;
break;
case 1:
sprite_index = spr_lobo_correndoC;
break;
case 2:
sprite_index = spr_lobo_correndoE;
break;
case 3:
sprite_index = spr_lobo_correndoB;
break;

}
}
}
function scr_lobo_parado(){
	scr_lobo_checar_pinto();
	 var _xx = right - left; 
   var _yy = down - up;
	var _dir = point_direction(x, y, dest_x, dest_y);
	hspd = lengthdir_x(velocidade, _dir);
	vspd = lengthdir_y(velocidade, _dir);
	
	
	
	dirlobo = floor((point_direction(x ,y, dest_x, dest_y) + 45)/90);
  if  _xx == 0 and _yy == 0{
	switch dirlobo{
default:
sprite_index = spr_lobo_paradoD;
break;
case 1:
sprite_index = spr_lobo_paradoC;
break;
case 2:
sprite_index = spr_lobo_paradoE;
break;
case 3:
sprite_index = spr_lobo_paradoB;
break;
}
}
}

function scr_lobo_perseguindo(){
	image_speed = 1.5;
	
	var _xx = right - left; 
    var _yy = down - up;
	
	dest_x = obj_pinto.x;
	dest_y = obj_pinto.y;
	
	var _dir = point_direction(x, y, dest_x, dest_y);
	
	hspd = lengthdir_x(velocidade_chase, _dir);
	vspd = lengthdir_y(velocidade_chase, _dir);
	
	dirlobo = floor((point_direction(x ,y, dest_x, dest_y) + 45)/90);

if  _xx == 0 and _yy == 0{
	switch dirlobo{
default:
sprite_index = spr_lobo_correndoD;
break;
case 1:
sprite_index = spr_lobo_correndoC;
break;
case 2:
sprite_index = spr_lobo_correndoE;
break;
case 3:
sprite_index = spr_lobo_correndoB;
break;

}
}
	
	
	scr_lobo_colisao();
	
	if distance_to_object(obj_pinto) >= dist_desaggro{
	estado = scr_lobo_escolher_estado;
	alarm[0] = irandom_range(120, 240);
	}
}

function scr_lobo_hit(){
	
	empurrar_veloc = lerp(empurrar_veloc, 0, 0.2);
	
    hspd = lengthdir_x(empurrar_veloc, empurrar_dir);
	vspd = lengthdir_y(empurrar_veloc, empurrar_dir);
	
	scr_lobo_colisao();
}