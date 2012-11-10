//한명의 유닛이 클릭되었을때

draw_sprite(global.sp_u7[c_hoo,1],-1,view_xview+70,view_yview+424)
//유닛 얼굴 인터페이스 드로우

draw_set_color(65280)
draw_sprite(spr_hp_ico,-1,view_xview+38,view_yview+453)
action_draw_variable(string(hp)+'/'+string(maxhp),view_xview+47,view_yview+446)
//체력표시
draw_sprite(spr_name_ico,-1,view_xview+100,view_yview+412)
draw_kr_string(view_xview+109,view_yview+405,name,c_white)
//이름표시
draw_set_color(c_white)
draw_sprite(spr_exp_ico,-1,view_xview+180,view_yview+412)
action_draw_variable(string(exp_p),view_xview+189,view_yview+405)
//경험치표시
if cre[1]=0 and bil_cl=0
{
draw_set_color(65280)
draw_sprite(spr_att_ico,-1,view_xview+100,view_yview+427)
action_draw_variable(string(Attack_point),view_xview+109,view_yview+420)
//공격력표시
draw_sprite(spr_mov_ico,-1,view_xview+180,view_yview+427)
action_draw_variable(string(move_speed),view_xview+189,view_yview+420)
//이동속도표시
draw_sprite(spr_nf_ico,-1,view_xview+100,view_yview+442)
sk_udraw_color()
draw_circle(view_xview+115,view_yview+442,5, 0);
//국기표시
}
draw_set_color(c_black)

if global.player_control=player_id
{
sk_cre_ca()
//유닛생산창
unit_bil_cr()
//건물 생산창
for(i=1;i!=9;i+=1)
{
if sknu>=i-1
{
with(obj_fa_expl){explode_script(other.mask_ppt[other.i-1],"|")
if iid=other.i and real(explode[0])>0
{

if other.skil_cr_al[iid-1]=0{skil_draw_skile()}
if other.skil_cr_al[iid-1]=1{if other.skki[1]!=iid and other.skki[2]!=iid and other.skki[3]!=iid and other.skki[4]!=iid{skil_draw_skile()}}
//스킬모습 드로우

}}}

}
}