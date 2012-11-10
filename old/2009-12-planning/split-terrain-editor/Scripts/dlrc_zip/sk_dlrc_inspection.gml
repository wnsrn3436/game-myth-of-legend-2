//dlrc인지 검사함

var sv_file_dlr;
sv_file_dlr=file_text_open_read(argument0)

if file_text_read_string(sv_file_dlr)=argument1
{
return 1
}
else
{
return 0
}

// sk_dlrc_inspection(dlrc명, dlrc앞머리)
