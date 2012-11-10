//글자를 파일에씀

var sv_st, sv_so;
sv_st=argument2
sv_so=argument1

if sv_so=-1{sv_so=string_length(sv_st)}
//글자개수가 -1이면 자동측정

repeat(sv_so)
{
file_bin_write_byte(argument0, ord(sv_st))
sv_st=string_delete(sv_st, 1, 1)
}

// sk_st_repeat(파일명, 반복개수, 글자)
