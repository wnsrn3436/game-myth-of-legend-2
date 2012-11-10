//땅 스킬 발동

if sk_go=1
{

if (skil_mo_et2[sk_iid-1]=0 and distance_to_point(gud_x,gud_y)<skil_mo_et[sk_iid-1]) or (skil_mo_et2[sk_iid-1]=1 and distance_to_object(gud_iid)<skil_mo_et[sk_iid-1])
{//범위안에 잇으면
explode_script(mask[sk_iid-1],"|")
money_m(2)
//인구주기 , 능력치 달기
if a1=3 and a2=3 and a3=3
{
explode_script(skill[sk_iid-1],"|")

if real(explode[3])=1 //클릭된 적관련
{
ins=instance_create(x,y,obj_skil_st); ins.obj_id=id; ins.iid=sk_iid; ins.mo=3; ins.ge=gud_iid; ins.ge2=gud_x; ins.ge3=gud_y
ins.sk_dra=sprite_get_number(mp_spr[sk_iid])
//스킬사용 (모드=3)
}

if real(explode[3])=2 //범위관련
{
ins=instance_create(x,y,obj_skil_st); ins.obj_id=id; ins.iid=sk_iid; ins.mo=4; ins.ge=gud_iid; ins.ge2=gud_x; ins.ge3=gud_y
ins.ge4=skil_et[sk_iid-1]; ins.ge5=team; ins.sk_dra=sprite_get_number(mp_spr[sk_iid])
//스킬사용 (모드=4)
}

}
else{if distance_to_object(sys_mouse)<600{massge_expo(18,'')}}


sc_move(0)
move_x=x
move_y=y
Attack_choose=1

sk_go=0
sk_iid=0
gud_iid=0
gud_x=0
gud_y=0
a1=0; a2=0; a3=0
}
else if(skil_mo_et2[sk_iid-1]=1 and distance_to_point(gud_x,gud_y)<skil_mo_et[sk_iid-1])
{
sc_move(0)
move_x=x
move_y=y
Attack_choose=1

sk_go=0
sk_iid=0
gud_iid=0
gud_x=0
gud_y=0
a1=0; a2=0; a3=0
}

}