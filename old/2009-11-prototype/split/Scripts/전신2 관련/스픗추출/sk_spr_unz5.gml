if file_exists("sploz\spl_"+string(i)+"_5.prmt") = 1
{
file_decrypt("sploz\spl_"+string(i)+"_5.prmt", "wjstlsdms@wnsrnrk", "sploz\a.zip")
//암호 풀기
extract_zip("sploz\","sploz\a.zip")
//압축해제

o=1
while(o!=9)
{
global.sp_u5[i,o]=sprite_add("sploz\"+string(o)+".gif",0,1,1,0,1,0,0)
//숫자=해당명령(이동,공격)  i=유닛 o=파일명
sprite_set_offset(global.sp_u5[i,o],sprite_get_width(global.sp_u5[i,o])/2,sprite_get_height(global.sp_u5[i,o])/2)
//중심점
o+=1
}
sk_file_sp_dl()
//파일삭제
}
else{enld=1}