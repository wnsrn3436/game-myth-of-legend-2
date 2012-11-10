//미니맵에 지형을 그립니다

var x1, y1, x2, y2;

for (i = 0; i < argument0.fhei; i += 1) 
{
for (j = 0; j < argument0.fwid; j += 1) 
{
x1 = x_loc+i*width/argument0.fwid
y1 = y_loc+j*height/argument0.fhei
x2 = x_loc+(i+1)*width/argument0.fwid
y2 = y_loc+(j+1)*height/argument0.fhei
draw_sprite_ext(argument1, -1, x1, y1, (x2-x1)/sprite_get_width(argument1), (y2-y1)/sprite_get_height(argument1), 0, -1, 1)
}
}

// sk_min_fog_back(back_포그시스템오브젝트, 스프라이트)