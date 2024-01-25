  // Tempo
  draw_text(40, 40, ceil(tempo/60));  
  tempo ++;
  
  
  // vars
  var _escala = 4;
  var _guia = display_get_gui_height()
  var _spra = sprite_get_height(spr_vida_hud_pinto) * _escala;
  var _huda = _guia - _spra;
  
  var _vida = obj_pinto.pinto_vida;
  var _maxvida = obj_pinto.pinto_vida_max;
  var _stamina = obj_pinto.stamina;
  var _maxstamina = obj_pinto.max_stamina;
   
  
   
   // Pinto Barra De Vida
   draw_sprite_ext(spr_vida_pinto, 0, 0, _huda, (_vida/_maxvida) * _escala, _escala, 0, c_white, 1);
  
   // Lobo Barra De Stamina
   draw_sprite_ext(spr_stamina_pinto, 0, 0, _huda + 32, (_stamina/_maxstamina) * _escala, _escala, 0, c_white, 1);

    // Hud
   draw_sprite_ext(spr_vida_hud_pinto, 0, 0, _huda, _escala, _escala, 0, c_white, 1);
    