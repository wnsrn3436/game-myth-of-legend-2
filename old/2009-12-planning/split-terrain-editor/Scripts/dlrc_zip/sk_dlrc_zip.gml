//dlrc파일의 첫 설정인 zip을함

var sv_file;

sv_file=file_text_open_write(argument0)
file_text_write_string(sv_file, argument2)
file_text_writeln(sv_file)
file_text_write_string(sv_file, argument1)
file_text_writeln(sv_file)
file_text_close(sv_file)

// sk_dlrc_zip(dlrc명, 구분글자, dlrc앞머리)
