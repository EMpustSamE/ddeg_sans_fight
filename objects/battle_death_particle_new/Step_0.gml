live;
if(image_blend == make_color_rgb(0, 0, 0)){
    image_alpha -= 0.05;
}

if (delay > 0) {
    delay -= 1;
}
else{
    gravity_direction = 90;
    gravity = gg;
    hspeed = hh;
    delay = 9999;
    r = color_get_red(image_blend);
    g = color_get_green(image_blend);
    b = color_get_blue(image_blend);
}

if (image_alpha <= 0) {
    instance_destroy();
}

if (hspeed != 0) {
    image_alpha -= 0.05;
    r += (255 - r) / 4;
    g += (255 - g) / 4;
    b += (255 - b) / 4;
    image_blend = make_color_rgb(r, g, b);
}