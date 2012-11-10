//미니맵에 포그를 파괴합니다

var land_oldland_terrain, land_terrain;

draw_set_color(argument1)

draw_rectangle(x, y, x+sprite_get_width(argument0), y+sprite_get_height(argument0), 0)
draw_sprite(argument0, -1, x, y)
with(obj_unit)
{
if (4>global.player_control and 4>player) or (global.player_control>=4 and player>=4) or other.ok_rr=0
{
draw_circle(x*other.xscale+other.x_loc, y*other.yscale+other.y_loc, (range/1.5)*other.mscale*other.mscale, false)
draw_circle(x*other.xscale+other.x_loc, (y+20)*other.yscale+other.y_loc, (range/1.2)*other.mscale*other.mscale, false)
draw_circle(x*other.xscale+other.x_loc, (y-20)*other.yscale+other.y_loc, (range/1.2)*other.mscale*other.mscale, false)
}
}

with(obj_bil)
{
if (4>global.player_control and 4>player) or (global.player_control>=4 and player>=4) or other.ok_rr=0
{
draw_circle(x*other.xscale+other.x_loc, y*other.yscale+other.y_loc, (range/1.5)*other.mscale*other.mscale, false)
}
}

land_terrain=sprite_create_from_screen(x_loc2, y_loc2, sprite_get_width(argument0), sprite_get_height(argument0), 1, 0, 0, 0)

land_oldland_terrain=argument0
if minimap_fog1=argument0{minimap_fog1=land_terrain}
if minimap_fog2=argument0{minimap_fog2=land_terrain}

if land_oldland_terrain>0{sprite_delete(land_oldland_terrain)}

draw_set_color(c_black)

// sk_land_destroy(스프라이트, 투명색)
