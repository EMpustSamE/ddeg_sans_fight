live;
draw_sprite_ext(sprite,image,x,y,scale_x,scale_y,0,-1,1)

w = (sprite_get_width(sprite) * scale_x);
h = (sprite_get_height(sprite) * scale_y);
xoff = (sprite_get_xoffset(sprite) * scale_x);
yoff = (sprite_get_yoffset(sprite) * scale_y);
x -= xoff * 2;
y -= yoff * 2;

surf = surface_create(w, h);
pixel = 0;
a = 0;
r = 0;
g = 0;
b = 0;
col = c_black;
delay = 0;

surface_set_target(surf);
draw_clear_alpha(c_black, 0);
draw_sprite(sprite, image, xoff, yoff);
surface_reset_target();

buff = buffer_create((4 * w) * h, buffer_fixed, 1);
buffer_get_surface(buff, surf, 0);
surface_free(surf);

blarg = (scale_x == 2) ? 1 : 2;

for (j = 0; j < h; j += blarg) {
    ed = 0;
    gg = (random(0.25) + 0.1);
    hh = (random(2) - 1);
    
    for (i = 0; i < w; i += blarg) {
        pixel = buffer_peek(buff, (4 * (i + (j * w))), buffer_u32);
        
        a = (pixel >> 24) & 255;
        r = pixel & 255;
        g = (pixel >> 8) & 255;
        b = (pixel >> 16) & 255;
        
        obj = noone;
        if (a == 255) {
            obj = battle_death_particle_new;
            col = make_color_rgb(r, g, b);
            if (r + g + b == 0) {
                ed = random(3);
                gg = (random(0.25) + 0.1);
                hh = (random(2) - 1);
            }
        }
        
        if (obj != noone) {
            _obj = instance_create_depth((x + (i * scale_x)), (y + (j * scale_y)), DEPTH_BATTLE.ENEMY, obj);
            with (_obj) {
                image_blend = other.col;
                delay = floor((other.delay / 3 - other.h / 6)) + other.ed;
                image_xscale = other.scale_x;
                image_yscale = other.scale_y;
                gg = other.gg;
                hh = other.hh;
            }
        }
    }
    delay += 1;
}

buffer_delete(buff);
instance_destroy();