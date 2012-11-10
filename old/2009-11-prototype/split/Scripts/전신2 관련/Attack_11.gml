if Attack_choose=4 and image_index=image_number-1 and Attack_2ch2>0
{
if Att_spl_team=0{with(obj_unit){if distance_to_object(other)<other.Att_spl_light and other.id!=id{hp-=other.Att_spl_apoint}}}
if Att_spl_team=1{with(obj_unit){if distance_to_object(other)<other.Att_spl_light and other.id!=id and team!=other.team{hp-=other.Att_spl_apoint}}}
if Att_spl_team=2{with(obj_unit){if distance_to_object(other)<other.Att_spl_light and other.id!=id and team=other.team{hp-=other.Att_spl_apoint}}}
//스플레쉬
_inst.hp-=Attack_point; _inst.exp_un=id ; Attack_choose=2
//적 체력 깍음
for(i=0; i!=Attack_spt+1; i+=1){if _inst.c_hoo=Attack_p[i]{_inst.hp-=Attack_e[i]; i=Attack_spt}}
//+데미지
Attack_2ch2-=1
}
// Attack_choose=4 이고 연속공격 일때 공격