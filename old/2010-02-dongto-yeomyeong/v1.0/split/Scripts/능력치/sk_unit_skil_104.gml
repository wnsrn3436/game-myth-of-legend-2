unit_s=1
//0-건물 1-근거리 2-장거리

bullet_speed=0
//장거리의경우 화살속도

name="곰팡이"
//이름

drag_ok=1
//0-드래그불가 1-드래그가능

hp=80
max_hp=80
//체력

move_speed=4
//스피드

attack_power=8
//힘
attack_speed=60
//어택속도
attack_alarm=60
//어택후 대기시간

range=90
//시야
attack_range=0
//어택할범위

attack_plus_number=0

attack_plus_id[0]=0
attack_plus_power[0]=0
//플러스데미지

moni=global.units_moni[argument0]
//생산비용
moni_alarm=global.moni_alarm[argument0]
//생산시간(초)

moni_go=1
//자원채취여부 0-no 1-yes
moni_go_id=105
//자원을갖다줄id

skil_number=3

skil_exe[0]=0
//0-건물건설 1-유닛생산
skil_id[0]=105
//생산id
skil_exe[1]=0
skil_id[1]=106
skil_exe[2]=0
skil_id[2]=107
