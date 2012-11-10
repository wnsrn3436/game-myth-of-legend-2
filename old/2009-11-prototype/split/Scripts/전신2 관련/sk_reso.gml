//자원 채집

if picking_state>0 and picking_state<5 and instance_number(obj_placed)>0{move_start=0; Attack_choose=0; move_x=obj_placed.x; move_y=obj_placed.y}

if picking_state=1 and distance_to_object(obj_placed)<5
{
  if (obj_placed.state=0 or obj_placed.state=id)
 {
  picking_state=2
  obj_placed.state=id
  }
}
//자원 채집상태일때 자원과 닿으면 자원채집 시작

if distance_to_object(obj_placed)<5 and instance_number(obj_placed)>0 and alarm[1]=-1
{
if picking_state>0 and picking_state<5 and obj_placed.state!=id and obj_placed.state!=0{sk_resoch(); picking_state=1; if distance_to_object(obj_reso)>300{picking_state=0; move_start=1}}
}
//자원을 따른놈이캐면 자원검색



if alarm[1]=-1 and instance_number(obj_placed)>0 and distance_to_object(obj_placed)<5 and picking_state>0 and picking_state<5
{

if picking_state=2{direction=point_direction(x,y,obj_placed.x,obj_placed.y); sp_8d(a_spr1,a_spr2,a_spr3,a_spr4,a_spr5,a_spr6,a_spr7,a_spr8); picking_state=4}
//스프라이트 변경후 picking_state=4

if picking_state=4 and image_index=image_number-1 and (Attack_2ch=0 or Attack_2ch=2) and instance_number(obj_placed)>0
{
obj_placed.hp-=Attack_point; picking_state=2; alarm[1]=Attack_time*room_speed; obj_placed.max_hp+=Attack_point
//자원 체력 깍음
sp_8d(o_spr1,o_spr2,o_spr3,o_spr4,o_spr5,o_spr6,o_spr7,o_spr8)
//모습 초기화
}
}
//자원채집

if instance_number(obj_placed)>0 and distance_to_object(obj_placed)<5 and picking_state>0 and picking_state<5
{
  if obj_placed.state=id
 {
 x+=lengthdir_x(1,point_direction(x,y,obj_placed.x,obj_placed.y)+180)
 y+=lengthdir_y(1,point_direction(x,y,obj_placed.x,obj_placed.y)+180)
}
}
//자원에 밀려남

if instance_number(obj_placed)>0 and alarm[1]=-1 and !distance_to_object(obj_placed)<5 and picking_state>0 and picking_state<5{mp_potential_step(obj_placed.x,obj_placed.y,move_speed,0); sp_8d(m_spr1,m_spr2,m_spr3,m_spr4,m_spr5,m_spr6,m_spr7,m_spr8)}
//자원채집일때 자원과 닿지않으면 이동

if picking_state>0 and picking_state<5 and picking_state<5 and instance_number(obj_placed)=0{sp_8d(o_spr1,o_spr2,o_spr3,o_spr4,o_spr5,o_spr6,o_spr7,o_spr8); picking_state=1; obj_placed=instance_range_random(obj_reso,300); if distance_to_object(obj_reso)>300{picking_state=0; move_start=1}}
//자원채집상태일때 자원이 없으면 자원검색

if picking_state=5{sp_8d(o_spr1,o_spr2,o_spr3,o_spr4,o_spr5,o_spr6,o_spr7,o_spr8); obj_pld=instance_range_random(obj_unit,300); if obj_pld.c_hoo=rococ and obj_pld.player_id=player_id and id!=obj_pld.id{picking_state=6}}
//자원 다 채집시 갖다줄곳 검색

if picking_state=6
{
if instance_number(obj_pld)>0
{
mp_potential_step(obj_pld.x,obj_pld.y,move_speed,0); sp_8d(m_spr1,m_spr2,m_spr3,m_spr4,m_spr5,m_spr6,m_spr7,m_spr8)
//갖다줄곳으로 이동
if distance_to_object(obj_pld)<5{global.water[player_id]+=rocow; picking_state=7}
//다가면 돈주고 다시 캐러감
}
else{picking_state=5}
}

if picking_state=7
{
if distance_to_object(obj_pld)<5
{
if distance_to_object(obj_pld)<5
{ x+=lengthdir_x(1,point_direction(x,y,obj_pld.x,obj_pld.y)+180)
   y+=lengthdir_y(1,point_direction(x,y,obj_pld.x,obj_pld.y)+180)}
//갖다주는놈과 닿으면 퍼짐
if !distance_to_object(obj_pld)<5{picking_state=1}
//갖다주는놈과 안닿으면 자원캠
}
}