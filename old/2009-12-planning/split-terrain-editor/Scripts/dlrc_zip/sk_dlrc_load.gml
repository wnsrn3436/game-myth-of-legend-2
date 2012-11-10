//dlrc파일의 정보를 로드함

var sv_file_dlr, sv_st;
sv_file_dlr=file_text_open_read(argument0)
sv_st=""

dlrc_max_number=0

for(j=0; j!=-1; j+=1)
{
file_text_readln(sv_file_dlr)

if file_text_read_string(sv_file_dlr)=argument1
{
file_text_readln(sv_file_dlr)
sv_st=file_text_read_string(sv_file_dlr)
if sv_st!=""
{
dlrc_file_na[dlrc_max_number]=sv_st
file_text_readln(sv_file_dlr)
dlrc_file_s1[dlrc_max_number]=file_text_read_real(sv_file_dlr)
file_text_readln(sv_file_dlr)
dlrc_file_s2[dlrc_max_number]=file_text_read_real(sv_file_dlr)
file_text_readln(sv_file_dlr)
dlrc_file_en[dlrc_max_number]=file_text_read_real(sv_file_dlr)

dlrc_max_number+=1
}
else{break}
}
}
//파일정보 얻기

file_text_close(sv_file_dlr)

// sk_dlrc_load(dlrc위치, 구분글자)
