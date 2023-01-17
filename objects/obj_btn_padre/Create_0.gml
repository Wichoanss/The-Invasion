
image_speed = 0;

var view = view_camera[0];
var vx = camera_get_view_x(view);
var vy = camera_get_view_y(view);

var xx = x;
var yy = y;

x = (xx - vx);
y = (yy - vy);

image_xscale *=0.7;
image_yscale *=0.7;
image_alpha = 0.7;
key = vk_shift;