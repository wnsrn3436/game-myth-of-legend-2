//유닛생산 , 업글 시간 지나면..

if cre[1]>0
{
cretm+=1
//시간증가
if cretm=global.ex_ctime[cre[1]]*room_speed
{explode_script(skill[skki[1]-1],"|")

if real(explode[1])=2
{
if distance_to_object(sys_mouse)<600{massge_expo(9,'')}
}
//업글

if real(explode[1])=1
{
if distance_to_object(sys_mouse)<600{massge_expo(8,'')}
global.cre_ch=cre[1]
_insttm=instance_create(x,bbox_bottom+4,obj_1)
_insttm.y+=_insttm.bbox_bottom-_insttm.y
with(_insttm){for(i=0; place_free(x,y)=0; i+=1){x+=2}}
_insttm.team=team
_insttm.player=player
_insttm.player_id=player_id
global.p_op[player_id]+=_insttm.pop
global.mp_op[player_id]+=_insttm.max_pop
if assa_x>0 or assa_y>0  //집결지
{
_insttm.move_x=assa_x
_insttm.move_y=assa_y
_insttm.move_start=1
_insttm.Attack_choose=1
_insttm.Attack_waits=0
_insttm.picking_state=0
_insttm.bil_iid=0
_insttm.bil_go=0
}
}
//유닛생산
ins=instance_create(x,y,obj_skil_st); ins.obj_id=id; ins.iid=skki[1]; ins.mo=1; ins.sk_dra=sprite_get_number(mp_spr[skki[1]])
//능력치

for(i=1;i!=5;i+=1){if i!=4{cre[i]=cre[i+1]; crerm[i]=crerm[i+1]; skki[i]=skki[i+1]}else{cre[4]=0; crerm[4]=spr_sk; skki[4]=0}}
//유닛생산 넘기기 , 그림 넘기기 , skki 넘기기
cretm=0
}
}