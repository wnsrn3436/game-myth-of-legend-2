//메뉴를 생산합니다

with(obj_delete_to){instance_destroy()}

if argument0=0
{
instance_create(x, y, obj_draw_sy0)
instance_create(x, y, obj_all_apply_sy0)
instance_create(x, y, obj_hill_set_sy0)
instance_create(x, y, obj_hill_sec_sy0)
instance_create(x, y, obj_choose_tri_sy0)
instance_create(x, y, obj_draw_wind_sy0)
}
if argument0=1
{
sk_yo_tri_load()
instance_create(x, y, obj_draw_yo0)
instance_create(x, y, obj_all_apply_sy0)
instance_create(x, y, obj_hill_set_sy0)
instance_create(x, y, obj_hill_sec_sy0)
instance_create(x, y, obj_choose_tri_sy0)
instance_create(x, y, obj_draw_wind_sy0)
}

instance_create(x, y, obj_scr_bar_to)
instance_create(x, y, obj_bar1_to)
instance_create(x, y, obj_bar2_to)

// sk_menu_create(만들메뉴 번호)
