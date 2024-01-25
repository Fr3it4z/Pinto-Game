

if hit == true{
   gpu_set_fog(true, c_white,0 , 0);
   draw_sprite(spr_sombra_lobo,0, x -1, y + 6);
   draw_self();
   gpu_set_fog(false, c_white,0 , 0);
}else{

  draw_sprite(spr_sombra_lobo,0, x -1, y + 6);
  draw_self();
}







