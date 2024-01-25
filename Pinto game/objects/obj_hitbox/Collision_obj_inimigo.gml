other.vida -= obj_pinto.dano;

var _dir = point_direction(obj_pinto.x, obj_pinto.y, other.x, other.y);
other.empurrar_dir = _dir;
other.empurrar_veloc = 10; 
other.estado = scr_lobo_hit;
other.alarm[1] = 5; 
other.hit = true;

var _inst = instance_create_layer(x , y - 5, "Instances", obj_dano);
_inst.alvo = other;
_inst.dano = obj_pinto.dano;