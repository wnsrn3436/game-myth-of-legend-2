if alarm[1]=-1
{
if Attack_choose=2{mp_potential_step(_inst.x,_inst.y,move_speed,0); sp_8d(m_spr1,m_spr2,m_spr3,m_spr4,m_spr5,m_spr6,m_spr7,m_spr8)}
//Attack_choose=2 일경우 적에게 이동

if _inst.team!=team and distance_to_object(_inst)<5 and Attack_choose=2{Attack_choose=3}
//검색된 유닛이 팀이 아니고 그 유닛과 닿았을경우 Attack_choose=3

if Attack_choose=3{sp_8d(a_spr1,a_spr2,a_spr3,a_spr4,a_spr5,a_spr6,a_spr7,a_spr8); Attack_choose=4}
//스프라이트 변경후 Attack_choose=4

if Attack_choose=4 and image_index=image_number-1 and Attack_2ch2=0
{
if Att_spl_team=0{with(obj_unit){if distance_to_object(other)<other.Att_spl_light and other.id!=id{hp-=other.Att_spl_apoint}}}
if Att_spl_team=1{with(obj_unit){if distance_to_object(other)<other.Att_spl_light and other.id!=id and team!=other.team{hp-=other.Att_spl_apoint}}}
if Att_spl_team=2{with(obj_unit){if distance_to_object(other)<other.Att_spl_light and other.id!=id and team=other.team{hp-=other.Att_spl_apoint}}}
//스플레쉬
_inst.hp-=Attack_point; _inst.exp_un=id ; Attack_choose=2; alarm[1]=Attack_time*room_speed
//적 체력 깍음
for(i=0; i!=Attack_spt+1; i+=1){if _inst.c_hoo=Attack_p[i]{_inst.hp-=Attack_e[i]; i=Attack_spt}}
//+데미지
Attack_2ch2=Attack_2ch
}
// Attack_choose=4 이고 연속공격 아닐때 공격

Attack_11()
//연속공격 실행

}