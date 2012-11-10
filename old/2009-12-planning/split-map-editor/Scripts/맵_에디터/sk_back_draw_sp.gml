//지형 간편드로우

if argument0=0
{
if falp_m[i, j]=-1
{
draw_sprite_ext(global.spr_sys_tri[falp[i, j]], image_ch_image, i * fgrid - view_xview, j * fgrid - view_yview, fscale, fscale, 0, -1, 1)
}
if falp_m[i, j]>-1
{
draw_sprite_ext(global.spr_sys_tri[falp[i, j]], falp_m[i, j], i * fgrid - view_xview, j * fgrid - view_yview, fscale, fscale, 0, -1, 1)
}
}

if argument0=1
{
if falp_m[i, j]=-1
{
draw_sprite_ext(global.spr_you_tri[falp[i, j]], image_ch_image, i * fgrid - view_xview, j * fgrid - view_yview, fscale, fscale, 0, -1, 1)
}
if falp_m[i, j]>-1
{
draw_sprite_ext(global.spr_you_tri[falp[i, j]], falp_m[i, j], i * fgrid - view_xview, j * fgrid - view_yview, fscale, fscale, 0, -1, 1)
}
}

// sk_back_draw_sp(0 or 1)
