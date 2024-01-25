x = global.cmx;
y = global.cmy;

global.cmx = lerp(global.cmx, obj_pinto.x - global.cmw/2, .2);
global.cmy = lerp(global.cmy, obj_pinto.y - global.cmh/2, .2);

camera_set_view_pos(view_camera[0], global.cmx, global.cmy);