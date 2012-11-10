//자원등 증가하기

if real(explode[2])!=0
{
global.water[1]+=global.ex_cwatw[real(explode[0])]
//자원 증가
}

if real(explode[5])!=0
{
obj_id.hp+=real(explode[5])
//체력 증가
}

if real(explode[6])!=0
{
obj_id.exp_p+=real(explode[6])
//exp 증가
}

obj_id.skil_tico2[iid-1]=0
//쿨타임 시간초기화