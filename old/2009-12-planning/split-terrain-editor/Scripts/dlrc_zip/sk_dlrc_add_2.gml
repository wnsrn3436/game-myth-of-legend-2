//dlrc파일에 파일을 추가시킴(시간 간격)

var sv_open1, sv_open2;
sv_open1=file_bin_open(files[argument1], 0)
sv_open2=file_bin_open(argument0, 2)

file_bin_seek(sv_open2, file_bin_size(sv_open2))

if cur_files_bytes=0
{
sk_st_repeat(sv_open2, -1, filename_name(files[argument1]))
sk_jump(sv_open2)
sk_st_repeat(sv_open2, 10, string(file_bin_size(sv_open2)+30))
sk_jump(sv_open2)
sk_st_repeat(sv_open2, 10, string(files_size[argument1]))
sk_jump(sv_open2)
sk_st_repeat(sv_open2, 10, string(argument4))
sk_jump(sv_open2)
//이름, 최대크기, 크기, 암호화수치 의 앞머리
}

file_bin_seek(sv_open1, cur_files_bytes)
file_bin_seek(sv_open2, file_bin_size(sv_open2))

for(j=0; j!=argument2; j+=1)
{
if cur_files_bytes!=files_size[argument1]
{
file_bin_write_byte(sv_open2, sk_st_enc(file_bin_read_byte(sv_open1), argument4))
cur_files_bytes+=1
}
}
//압축

if cur_files_bytes=files_size[argument1]
{
file_bin_seek(sv_open2, file_bin_size(sv_open2)+5)
sk_jump(sv_open2)
sk_st_repeat(sv_open2, -1, argument3)
sk_jump(sv_open2)
cur_files_bytes=0
}
//압축완료

file_bin_close(sv_open1)
file_bin_close(sv_open2)

if cur_files_bytes=0{return 1}
else{return 0}
//다햇냐?

// sk_dlrc_add_2(dlrc위치, 인덱스, 한번에 압축할바이트, 구분글자, 암호화할수치)
