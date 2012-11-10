//건물 건설게이지 표시


if bil_cl>0
{
draw_rectangle(view_xview+140-1,view_yview+420-1,view_xview+140+maxhp*room_speed/maxhp*room_speed*140/5700+1,view_yview+420+4,0)
draw_set_color(65280)
draw_rectangle(view_xview+140,view_yview+420,view_xview+140+bil_cl2*room_speed/maxhp*room_speed*140/5700,view_yview+420+3,0)
draw_set_color(c_black)
//생산 게이지 표시
draw_kr_string(view_xview+100,view_yview+430,'건설중'+' - '+string(floor(bil_cl2/maxhp*100))+'%',65280)
//글자 표시
}