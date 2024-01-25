
script_execute(estado);

if alarm[1] <= 0{
   stamina += 1;	
}

stamina = clamp(stamina, 0, max_stamina);

if pinto_vida <=0 {
	instance_destroy();	
}