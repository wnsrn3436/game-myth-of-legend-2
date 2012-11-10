if alarm[1]=-1 and distance_to_object(_inst)<light_2 and distance_to_object(_inst)>light_3
{

if Attack_choose=2{direction=point_direction(x,y,_inst.x,_inst.y); if distinction=2{sp_8d(a_spr1,a_spr2,a_spr3,a_spr4,a_spr5,a_spr6,a_spr7,a_spr8)} Attack_choose=4}
//스프라이트 변경후 Attack_choose=4

if Attack_choose=4 and image_index=image_number-1 and Attack_2ch2=0
{
ins=instance_create(x,y,obj_bullet);ins.iid=id; ins.iiid=_inst; Attack_choose=2; alarm[1]=Attack_time*room_speed
//총탄 소환
Attack_2ch2=Attack_2ch
}
// Attack_choose=4 이고 연속공격 아닐때 공격

Attack_22()
//연속공격 실행
}

if Attack_choose=2 and distance_to_object(_inst)<=light_3 and light_33=1{
if _inst.move_speed!=move_speed{mp_potential_step(x+lengthdir_x(move_speed,point_direction(x,y,_inst.x,_inst.y)+180),y+lengthdir_y(move_speed,point_direction(x,y,_inst.x,_inst.y)+180),move_speed,0)}
if _inst.move_speed=move_speed{mp_potential_step(x+lengthdir_x(move_speed-1,point_direction(x,y,_inst.x,_inst.y)+180),y+lengthdir_y(move_speed-1,point_direction(x,y,_inst.x,_inst.y)+180),move_speed-1,0)}
sp_8d(m_spr1,m_spr2,m_spr3,m_spr4,m_spr5,m_spr6,m_spr7,m_spr8)
}
//최소시야 안에있으면 뒤로감

if distance_to_object(_inst)<=light and distance_to_object(_inst)>=light_2
{
if Attack_choose=2 and distinction=2{mp_potential_step(_inst.x,_inst.y,move_speed,0); sp_8d(m_spr1,m_spr2,m_spr3,m_spr4,m_spr5,m_spr6,m_spr7,m_spr8)}
}

//적이 이동시야에 있으면 이동

if distance_to_object(_inst)>=light and distance_to_object(_inst)>light_2
{
if Attack_choose=2 and distinction=2{mp_potential_step(_inst.x,_inst.y,move_speed,0); sp_8d(m_spr1,m_spr2,m_spr3,m_spr4,m_spr5,m_spr6,m_spr7,m_spr8)}
}

//적이 이동시야에 없으면 이동