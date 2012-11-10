//미니맵 지형을 업데이트합니다

var land_oldland_terrain, land_terrain;

texture_set_interpolation(false)

sk_min_fog_back(sys_back_fog, spr_tmp)

land_terrain=sprite_create_from_screen(x_loc-view_xview, y_loc-view_yview, sprite_get_width(argument0), sprite_get_height(argument0), 0, 0, 0, 0)

land_oldland_terrain=argument0
min_back_fog=land_terrain

if land_oldland_terrain>0{sprite_delete(land_oldland_terrain)}

texture_set_interpolation(true)

// sk_m_fog_bk_update(스프라이트)
