
if other.tomardano == true{

var _dir = point_direction(x, y, other.x, other.y);

with (other){
 empurrar_dir = _dir;
 estado = scr_pinto_hit;
 alarm[2] = 10;
 alarm[3] = 100
 tomardano = false;
 if(pinto_vida_max > 0){
	pinto_vida -=1;
	}
}
var _inst = instance_create_layer(x, y, "Instances", obj_dano);
_inst.alvo = other;
_inst.dano = 1;
}







