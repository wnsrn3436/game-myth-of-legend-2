//dlrc파일의 인덱스파일을 추출함(시간 간격)

var sv_open1, sv_open2;
sv_open1=0

if cur_files_bytes=0{file_delete(argument1+dlrc_file_na[argument2])}

sv_open1=file_bin_open(argument1+dlrc_file_na[argument2], 2)
sv_open2=file_bin_open(argument0, 0)

file_bin_seek(sv_open1, file_bin_size(sv_open1))
file_bin_seek(sv_open2, dlrc_file_s1[argument2]+cur_files_bytes+6)
//+6이유는 파일의 앞머리*2

for(j=0; j!=argument3; j+=1)
{
if cur_files_bytes!=dlrc_file_s2[argument2]
{
file_bin_write_byte(sv_open1, sk_st_sol(file_bin_read_byte(sv_open2), dlrc_file_en[argument2]))
cur_files_bytes+=1
}
}
//추출

if cur_files_bytes=dlrc_file_s2[argument2]{cur_files_bytes=0}

file_bin_close(sv_open1)
file_bin_close(sv_open2)

if cur_files_bytes=0{return 1}
else{return 0}
//다햇냐?

// sk_dlrc_extract_2(dlrc위치, 저장파일위치(폴더), 추출할인덱스, 한번에 압축할바이트)
