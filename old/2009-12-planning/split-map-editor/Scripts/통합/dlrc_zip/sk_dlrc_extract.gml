//dlrc파일의 인덱스파일을 추출함

var sv_open1, sv_open2;
sv_open1=0

file_delete(argument1+dlrc_file_na[argument2])

sv_open1=file_bin_open(argument1+dlrc_file_na[argument2], 2)
sv_open2=file_bin_open(argument0, 0)

file_bin_seek(sv_open2, dlrc_file_s1[argument2]+6)
//+6이유는 파일의 앞머리*2

for(j=0; j!=dlrc_file_s2[argument2]; j+=1)
{
file_bin_write_byte(sv_open1, sk_st_sol(file_bin_read_byte(sv_open2), dlrc_file_en[argument2]))
}
//추출

file_bin_close(sv_open1)
file_bin_close(sv_open2)

// sk_dlrc_extract(dlrc위치, 저장파일위치(폴더), 추출할인덱스)
