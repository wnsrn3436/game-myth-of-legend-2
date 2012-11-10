if Attack_choose=4 and image_index=image_number-1 and Attack_2ch2>0
{
ins=instance_create(x,y,obj_bullet);ins.iid=id; ins.iiid=_inst; Attack_choose=2
//총탄 소환
Attack_2ch2-=1
}
// Attack_choose=4 이고 연속공격 일때 공격