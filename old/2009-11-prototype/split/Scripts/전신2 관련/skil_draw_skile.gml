if other.i=1{x=view_xview+428; y=view_yview+416}
if other.i=2{x=view_xview+478; y=view_yview+416}
if other.i=3{x=view_xview+529; y=view_yview+416}
if other.i=4{x=view_xview+579; y=view_yview+416}
if other.i=5{x=view_xview+428; y=view_yview+450}
if other.i=6{x=view_xview+478; y=view_yview+450}
if other.i=7{x=view_xview+529; y=view_yview+450}
if other.i=8{x=view_xview+579; y=view_yview+450}
//i에따른 지정위치
sprite_index=global.sp_u7[other.c_hoo,iid+1]
draw_sprite(sprite_index,-1,x,y)
//스킬 모습드로우
obj_id=other.id
skill_sub=other.skill_sub[other.i-1]
skill_exp=other.skill_exp[other.i-1]
draw_set_alpha(0.3)
if obj_id.skil_tico2[iid-1]!=0{draw_rectangle(x-17,y+15,x+17,y+15-obj_id.skil_tico2[iid-1]/obj_id.skil_tico[iid-1]*15/29,0)}
draw_set_alpha(1)
//쿨타임 드로우

//능력치 불르기

var yyy;
yyy=320
if ex_draw=1{
draw_sprite(spr_int_expl,-1,view_xview+527,view_yview+353)
//스킬창 드로우

if real(explode[1])=1{skill_sub=string(global.ex_name[real(explode[0])])+string(skill_sub)}
skill_sub='<'+string(skill_sub)+'>'
if real(explode[2])=1
{draw_sprite(spr_int_expl_p,-1,view_xview+527,view_yview+yyy)
draw_kr_string(view_xview+430,view_yview+yyy-27,'물-------소비량:'+string(global.ex_cwatw[real(explode[0])]),65280); yyy-=30}
if real(explode[5])!=0{draw_sprite(spr_int_expl_p,-1,view_xview+527,view_yview+yyy)
draw_kr_string(view_xview+430,view_yview+yyy-27,'체력-----소비량:'+string(real(explode[5])),65280); yyy-=30}
if real(explode[6])!=0{draw_sprite(spr_int_expl_p,-1,view_xview+527,view_yview+yyy)
draw_kr_string(view_xview+430,view_yview+yyy-27,'경험치---소비량:'+string(real(explode[6])),65280); yyy-=30}
if real(explode[3])=1{draw_sprite(spr_int_expl_p,-1,view_xview+527,view_yview+yyy)
draw_kr_string(view_xview+430,view_yview+yyy-27,'인구-----증가량:'+string(global.ex_pop[real(explode[0])]),65280); yyy-=30}
if real(explode[4])=1{draw_sprite(spr_int_expl_p,-1,view_xview+527,view_yview+yyy)
draw_kr_string(view_xview+430,view_yview+yyy-27,'최대인구-증가량:'+string(global.ex_max_pop[real(explode[0])]),65280); yyy-=30}

draw_kr_string(view_xview+430,view_yview+325,skill_sub,65280)
//스킬제목 드로우
skill_exp=(string_copy(skill_exp,0,32))+('|')+(string_copy(skill_exp,33,string_length(skill_exp)))+('|'); explode_script(skill_exp,"|")
draw_kr_string(view_xview+430,view_yview+345,explode[0],c_white)
draw_kr_string(view_xview+430,view_yview+365,explode[1],c_white)
//스킬설명 드로우
}