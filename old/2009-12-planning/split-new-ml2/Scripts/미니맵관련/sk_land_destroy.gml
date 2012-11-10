//미니맵에 포그를 파괴합니다

var land_oldland_terrain, land_terrain;

texture_set_interpolation(false)

draw_set_color(argument1)

draw_rectangle(x, y, x+sprite_get_width(argument0), y+sprite_get_height(argument0), 0)
draw_sprite(argument0, -1, x, y)
with(obj_unit){draw_circle(x*other.xscale+other.x_loc, y*other.yscale+other.y_loc, 30*other.mscale*other.mscale+1.5, false)}

land_terrain=sprite_create_from_screen(x_loc2, y_loc2, sprite_get_width(argument0), sprite_get_height(argument0), 1, 0, 0, 0)

land_oldland_terrain=argument0
if minimap_fog1=argument0{minimap_fog1=land_terrain}
if minimap_fog2=argument0{minimap_fog2=land_terrain}

if land_oldland_terrain>0{sprite_delete(land_oldland_terrain)}

draw_set_color(c_black)

texture_set_interpolation(true)

// sk_land_destroy(스프라이트, 투명색)
