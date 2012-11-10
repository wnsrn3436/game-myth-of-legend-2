//사용자의 지형을 로드함

var tmp_sprspr;

for(i=0; file_exists(global.fodre2+string(i)+".dlrc")=1; i+=1)
{
sk_dlrc_load(global.fodre2+string(i)+".dlrc", "+|+")

for(t=0; t!=dlrc_max_number; t+=1)
{
sk_dlrc_extract(global.fodre2+string(i)+".dlrc", "sy_tmp\", t)
}

global.spr_you_tri[i]=sprite_add("sy_tmp\"+string(1)+".PNG",0,0,0,0,0)
for(j=2; file_exists("sy_tmp\"+string(j)+".PNG")=1; j+=1)
{
tmp_sprspr=sprite_add("sy_tmp\"+string(j)+".PNG",0,0,0,0,0)
sprite_merge(global.spr_you_tri[i], tmp_sprspr)
//덧붙이기
}
//스픗불르기

open=file_text_open_read("sy_tmp\name.txt")
global.name_you_tri[i]=file_text_read_string(open)+file_text_read_string(open)
file_text_close(open)
//이름불르기

global.tri_you_max_number+=1
//최대 지형수 증가

for(t=0; t!=dlrc_max_number; t+=1){sk_dlrc_delete("sy_tmp\", t)}
//임시파일삭제
}

if global.tri_you_max_number>global.max_you_number{global.tri_you_max_number=global.max_you_number}

// sk_yo_tri_load()
