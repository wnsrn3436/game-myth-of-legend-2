//메시지 드로우

with(obj_skil_expo){instance_destroy()}

ii=instance_create(x,y,obj_skil_expo);

if  argument0=1{ii.im='물이 부족합니다'}
if  argument0=2{ii.im='체력이 부족합니다'}
if  argument0=3{ii.im='exp가 부족합니다'}

if  argument0=4
{skill_sub=obj_id.skill_sub[iid-1]
explode_script(obj_id.mask[iid-1],"|")
if real(explode[0])!=0
{
if real(explode[1])=1{skill_sub=string(global.ex_name[real(explode[0])])+string(skill_sub)}
}
ii.im='<'+string(skill_sub)+'>'+' - 사용됨'
}


if  argument0=5{ii.im='최대인구를 초과하였습니다'}
if  argument0=6{ii.im='쿨타임 입니다'}
if  argument0=7{ii.im='최대 생산창을 초과하였습니다'}
if  argument0=8{ii.im='<'+global.ex_name[cre[1]]+'> 생산됨'}

if  argument0=9
{skill_sub=skill_sub[skki[1]-1]
explode_script(mask[skki[1]-1],"|")
if real(explode[0])!=0
{
if real(explode[1])=1{skill_sub=string(global.ex_name[real(explode[0])])+string(skill_sub)}
}
ii.im='<'+string(skill_sub)+'>'+' - 업글됨'
}

if  argument0=10{ii.im='건물건설 불가!'}
if  argument0=11{ii.im='마우스의 상태가 보통이여야합니다'}
if  argument0=12{ii.im='건물건설 상태입니다'}
if  argument0=13{ii.im='<'+name+'> 건설완료됨!'}
if  argument0=14{ii.im='집결지 설정 완료!'}
if  argument0=15{ii.im='집결지 초기화 완료!'}
if  argument0=16{ii.im='스킬사용 상태입니다'}
if  argument0=17{ii.im='부대'+argument1+' 설정완료'}
if  argument0=18{ii.im='스킬사용 불가!'}
if  argument0=19{ii.im=argument1}