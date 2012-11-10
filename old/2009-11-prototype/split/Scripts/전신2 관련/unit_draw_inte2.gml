//많은유닛이 클릭되었을때

for(i=1;i!=9;i+=1)
{
if click_number=i
{with(obj_fa_c){if iid=other.i
{
if other.i=1{x=view_xview+60; y=view_yview+414}
if other.i=2{x=view_xview+100; y=view_yview+414}
if other.i=3{x=view_xview+140; y=view_yview+414}
if other.i=4{x=view_xview+180; y=view_yview+414}
if other.i=5{x=view_xview+60; y=view_yview+450}
if other.i=6{x=view_xview+100; y=view_yview+450}
if other.i=7{x=view_xview+140; y=view_yview+450}
if other.i=8{x=view_xview+180; y=view_yview+450}
//i에따른 지정위치
sprite_index=global.sp_u7[other.c_hoo,1]
draw_sprite(sprite_index,-1,x,y)
//유닛 얼굴 인터페이스 드로우
obj_id=other.id
//능력치 받기
draw_set_color(c_black)
draw_rectangle(x-16,y+14.19,x-15+other.maxhp/other.maxhp*10*3+1,y+19,0)
draw_set_color(c_red)
draw_rectangle(x-15,y+15.19,x-15+other.hp/other.maxhp*10*3,y+18,0)
draw_set_color(c_black)
//hp바 그리기
}}}
}