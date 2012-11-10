//그림을 증/감함

if argument1-1>=argument0.key_max
{
image_yscale=1
image_yscale-=argument1/argument0.key_max/size_ratio
//크기조절

y=ystart
y+=argument0.key_start_key*(sprite_get_height(sprite_index)*(argument1/argument0.key_max/size_ratio)/(argument1-argument0.key_max))
//스크롤바 이동
}
else{image_yscale=1; y=ystart}

// sk_scr_bar_change(키담당오브젝트, 최대개수)
