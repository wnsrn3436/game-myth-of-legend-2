//가장가깝고 조건에해당하는 오브젝트를 검색합니다(자원줄건물)

sv_id_pos=noone
sv_distance=argument1+1

with(argument0)
{
if other.sv_distance>point_distance(x, y, other.x, other.y) and id!=other.id and player=other.player and unit_id=other.moni_go_id
{
other.sv_id_pos=id
other.sv_distance=point_distance(x, y, other.x, other.y)
}
//조건문임. 더 추가는 and 문으로.
}

return sv_id_pos

// sk_obj_seek3(오브젝트, 최대거리)
