var fog_fwid, fog_fhei;
fog_fwid=sys_fog.fwid
fog_fhei=sys_fog.fhei

dx = min(max(round(argument0 / sys_fog.fgrid), 0), fog_fwid)
dy = min(max(round(argument1 / sys_fog.fgrid), 0), fog_fhei)

if ds_grid_get(sys_fog.fog_id, dx, dy)=argument2{return 1}
return 0
