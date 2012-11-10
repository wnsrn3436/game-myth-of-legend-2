//스킬사용

if obj_id.skill[iid-1]=11
{
ins=instance_create(obj_id.x,obj_id.y,obj_skil_st)
ins.obj_id=obj_id; ins.iid=iid; ins.mo=1
ins.sk_dra=sprite_get_number(obj_id.mp_spr[iid])
massge_expo(4,'')
}
//스킬 자신사용

if obj_id.skill[iid-1]=12
{
ins=instance_create(obj_id.x,obj_id.y,obj_skil_st)
ins.obj_id=obj_id; ins.iid=iid; ins.mo=2; ins.ge=obj_id.skil_et[iid-1]; ins.ge2=obj_id.team
ins.sk_dra=sprite_get_number(obj_id.mp_spr[iid])
massge_expo(4,'')
}
//스킬 범위사용

if obj_id.skill[iid-1]>20 and obj_id.skill[iid-1]<30
{explode_script(mask,"|")
if obj_id.cre[4]>0{money_p(); massge_expo(7,'')}
for(i=1;i!=5;i+=1){if obj_id.cre[i]=0{obj_id.cre[i]=real(explode[0]);obj_id.crerm[i]=global.sp_u7[obj_id.c_hoo,iid+1]; obj_id.mass[i]=mask; obj_id.skki[i]=iid; i=4}}
}
//유닛생산

if obj_id.skill[iid-1]=31
{explode_script(mask,"|"); money_p()
global.attack=3; obj_id.bil_iid=iid
}
//건물건설

if obj_id.skill[iid-1]>40 and obj_id.skill[iid-1]<50
{explode_script(mask,"|"); money_p()
global.attack=4; obj_id.sk_iid=iid
}
//바탕클릭 스킬사용