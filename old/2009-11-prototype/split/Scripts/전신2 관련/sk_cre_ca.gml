//유닛생산 게이지등. 표시

for(i=1;i!=5;i+=1)
{
if cre[1]>0
{
with(obj_cre_ca)
{if iid=other.i and other.cre[iid]>0{
obj_id=other.id

if iid=1
{
draw_rectangle(view_xview+140-1,view_yview+420-1,view_xview+140+global.ex_ctime[other.cre[1]]*room_speed/global.ex_ctime[other.cre[1]]*room_speed*140/5700+1,view_yview+420+4,0)
draw_set_color(65280)
draw_rectangle(view_xview+140,view_yview+420,view_xview+140+other.cretm/global.ex_ctime[other.cre[1]]*room_speed*140/5700,view_yview+420+3,0)
draw_kr_string(view_xview+100,view_yview+454,string(floor(other.cretm/(global.ex_ctime[other.cre[1]]*room_speed)*100))+'%',65280)
draw_set_color(c_black)
//생산 게이지 표시
}

if other.i=1{x=view_xview+110; y=view_yview+435}
if other.i=2{x=view_xview+150; y=view_yview+450}
if other.i=3{x=view_xview+180; y=view_yview+450}
if other.i=4{x=view_xview+210; y=view_yview+450}
//위치선정

sprite_index=other.crerm[other.i]
if other.cre[other.i]>0{draw_sprite(sprite_index,-1,x,y)}
//그림 드로우

}
}
}
}