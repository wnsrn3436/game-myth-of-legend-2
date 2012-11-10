//미니맵에 지형을 그립니다

var x1, y1, x2, y2, pmx, pmy;

for (i = 0; i < argument0.fhei; i += 1) 
{
for (j = 0; j < argument0.fwid; j += 1) 
{
x1 = x_loc+i*width/argument0.fwid
y1 = y_loc+j*height/argument0.fhei
x2 = x_loc+(i+1)*width/argument0.fwid
y2 = y_loc+(j+1)*height/argument0.fhei
if sys_back_fog.falp_c[i, j]=0{draw_sprite_ext(global.spr_sys_tri[sys_back_fog.falp[i, j]], sys_back_fog.falp_m[i, j], x1, y1, (x2-x1)/sprite_get_width(global.spr_sys_tri[sys_back_fog.falp[i, j]]), (y2-y1)/sprite_get_height(global.spr_sys_tri[sys_back_fog.falp[i, j]]), 0, -1, 1)}
if sys_back_fog.falp_c[i, j]=1{draw_sprite_ext(global.spr_you_tri[sys_back_fog.falp[i, j]], sys_back_fog.falp_m[i, j], x1, y1, (x2-x1)/sprite_get_width(global.spr_you_tri[sys_back_fog.falp[i, j]]), (y2-y1)/sprite_get_height(global.spr_you_tri[sys_back_fog.falp[i, j]]), 0, -1, 1)}
}
}

for (i = 0; i < argument0.fhei; i += 1) 
{
for (j = 0; j < argument0.fwid; j += 1) 
{
if argument0.falp2[i, j]>0
{
x1 = x_loc+i*width/argument0.fwid
y1 = y_loc+j*height/argument0.fhei
x2 = x_loc+(i+1)*width/argument0.fwid
y2 = y_loc+(j+1)*height/argument0.fhei
pmx=argument0.falp2[i,j]/argument0.fwid
pmy=argument0.falp2[i,j]/argument0.fhei

draw_set_color(argument0.falp2_c[i, j])
draw_rectangle(x1-pmx, y1-1, x2+pmx, y2+pmy, 0)
draw_set_color(c_black)
}
}
}

for (i = 0; i < argument0.fhei; i += 1) 
{
for (j = 0; j < argument0.fwid; j += 1) 
{
if argument0.falp2[i, j]>0
{
x1 = x_loc+i*width/argument0.fwid
y1 = y_loc+j*height/argument0.fhei
x2 = x_loc+(i+1)*width/argument0.fwid
y2 = y_loc+(j+1)*height/argument0.fhei
if sys_back_fog.falp_c[i, j]=0{draw_sprite_ext(global.spr_sys_tri[sys_back_fog.falp[i, j]], sys_back_fog.falp_m[i, j], x1, y1, (x2-x1)/sprite_get_width(global.spr_sys_tri[sys_back_fog.falp[i, j]]), (y2-y1)/sprite_get_height(global.spr_sys_tri[sys_back_fog.falp[i, j]]), 0, -1, 1)}
if sys_back_fog.falp_c[i, j]=1{draw_sprite_ext(global.spr_you_tri[sys_back_fog.falp[i, j]], sys_back_fog.falp_m[i, j], x1, y1, (x2-x1)/sprite_get_width(global.spr_you_tri[sys_back_fog.falp[i, j]]), (y2-y1)/sprite_get_height(global.spr_you_tri[sys_back_fog.falp[i, j]]), 0, -1, 1)}
}
}
}

// sk_min_fog_back(back_포그시스템오브젝트, 스프라이트)
