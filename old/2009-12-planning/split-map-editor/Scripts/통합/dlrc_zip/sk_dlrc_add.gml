//dlrc파일에 파일을 추가시킴

var sv_open1, sv_open2;
sv_open1=file_bin_open(files[argument1], 0)
sv_open2=file_bin_open(argument0, 2)

file_bin_seek(sv_open2, file_bin_size(sv_open2))

sk_st_repeat(sv_open2, -1, filename_name(files[argument1]))
sk_jump(sv_open2)
sk_st_repeat(sv_open2, 10, string(file_bin_size(sv_open2)+30))
sk_jump(sv_open2)
sk_st_repeat(sv_open2, 10, string(files_size[argument1]))
sk_jump(sv_open2)
sk_st_repeat(sv_open2, 10, string(argument3))
sk_jump(sv_open2)
//이름, 최대크기, 크기, 암호화수치 의 앞머리

for(j=0; j!=files_size[argument1]; j+=1)
{
file_bin_write_byte(sv_open2, sk_st_enc(file_bin_read_byte(sv_open1), argument3))
}
//압축

file_bin_seek(sv_open2, file_bin_size(sv_open2)+5)
sk_jump(sv_open2)
sk_st_repeat(sv_open2, -1, argument2)
sk_jump(sv_open2)
//압축완료

file_bin_close(sv_open1)
file_bin_close(sv_open2)

// sk_dlrc_add(dlrc위치, 인덱스, 구분글자, 암호화할수치)
