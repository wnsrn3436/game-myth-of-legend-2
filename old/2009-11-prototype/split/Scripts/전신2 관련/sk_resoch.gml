//자원 검색

obj_placed=instance_range_random(obj_reso,300)

for(i=0;i<6;i+=1)
{
if obj_placed.state!=id and instance_number(obj_placed)>0
{obj_placed=instance_range_random(obj_reso,300)}
}

if obj_placed.state!=id{alarm[1]=50}