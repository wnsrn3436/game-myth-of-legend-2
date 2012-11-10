//자원등 감소하기

if real(explode[2])!=0
{
if global.water[player_id]>=global.ex_cwatw[real(explode[0])]{a1=1}
}

if real(explode[5])!=0
{
if hp>real(explode[5]){a2=1}
}

if real(explode[6])!=0
{
if exp_p>=real(explode[6]){a3=1}
}

if real(explode[2])!=0 and a1=1{a1=3}
if real(explode[2])=0 and a1=0{a1=3}
if real(explode[5])!=0 and a2=1{a2=3}
if real(explode[5])=0 and a2=0{a2=3}
if real(explode[6])!=0 and a3=1{a3=3}
if real(explode[6])=0 and a3=0{a3=3}


if a1=3 and a2=3 and a3=3
{
global.water[player_id]-=global.ex_cwatw[real(explode[0])]
hp-=real(explode[5])
exp_p-=real(explode[6])
if argument0=1{skil_tico2[bil_iid-1]=skil_tico[bil_iid-1]*room_speed}
if argument0=2{skil_tico2[sk_iid-1]=skil_tico[sk_iid-1]*room_speed}
//쿨타임 시간증가
}