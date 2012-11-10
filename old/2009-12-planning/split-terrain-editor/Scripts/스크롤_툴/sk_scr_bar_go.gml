//스크롤바 이동

if mouse_y>yy{argument0.key_start_key+=mouse_y-yy}
//아래로 스크롤
if mouse_y<yy{argument0.key_start_key-=yy-mouse_y}
//위로 스크롤

if argument0.key_start_key>argument1-argument0.key_max
{
argument0.key_start_key=argument1-argument0.key_max
}
if argument0.key_start_key<0
{
argument0.key_start_key=0
}

// sk_scr_bar_change(키담당오브젝트, 최대개수)
