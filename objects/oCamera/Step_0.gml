x = lerp(x, floor(oPlayer.x), 0.1);
y = lerp(y, floor(oPlayer.y), 0.1);

instance_deactivate_all(true);
instance_activate_object(oInventory);
instance_activate_object(oWorldGen);
instance_activate_object(oCamera);
instance_activate_object(oPlayer);
instance_activate_object(oLight);
instance_activate_object(oEnemy);
instance_activate_object(oGameOver);

var cam = view_camera[0];
var left = camera_get_view_x(cam) - 0;
var top = camera_get_view_y(cam) - 0;
var width = camera_get_view_width(cam) + 150;
var height = camera_get_view_height(cam) + 150;

instance_activate_region(left, top, width, height, true);