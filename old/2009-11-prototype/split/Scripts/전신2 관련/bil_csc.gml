//건물건설 관련

if move_start=0 and bil_go=1
{
explode_script(mask[bil_iid-1],"|")
sprite_index=global.sp_u1[real(explode[0]),1]
if !instance_place(x, y,obj_unit) and !instance_place(x, y,obj_reso)
{
if global.p_op[player_id]+global.ex_pop[real(explode[0])]<=global.mp_op[player_id]
{
money_m(1)
//능력치 달기
if a1=3 and a2=3 and a3=3
{
global.p_op[player_id]+=global.ex_pop[real(explode[0])]
global.cre_ch=real(explode[0])
_insttm=instance_create(x,y,obj_1)
_insttm.team=team
_insttm.player=player
_insttm.player_id=player_id
_insttm.distinction=3
_insttm.sknu=-1
if _insttm.ctime>0{_insttm.bil_cl=_insttm.maxhp/_insttm.ctime}
if _insttm.ctime<=0{_insttm.bil_cl=0.0000000000000001}
//유닛생산
click=0
instance_change(witunit,0)
}
else{if distance_to_object(sys_mouse)<600{massge_expo(10,'')}}

}
else{if distance_to_object(sys_mouse)<600{massge_expo(5,'')}}
}
else{if distance_to_object(sys_mouse)<600{massge_expo(10,'')}}
bil_go=0
bil_iid=0
a1=0; a2=0; a3=0
}
//건물건설 실행

if bil_cl>0 and bil_cl!=0.0000000000000001{bil_cl2+=bil_cl/room_speed}
//건물건설 초달기
if bil_cl2>=maxhp{if distance_to_object(sys_mouse)<600{massge_expo(13,'')}
bil_cl=0; distinction=global.ex_distinction[c_hoo]; sknu=global.ex_sknu[c_hoo]; bil_cl2=0; bil_rm=1; global.mp_op[player_id]+=max_pop}
//건물건설 완료