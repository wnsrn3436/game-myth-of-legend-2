//파일리스트를 만들어줌(지정파일)

var sv_open1;
sv_open1=0

files[max_files]=argument0

sv_open1=file_bin_open(files[max_files], 0)
files_size[max_files]=file_bin_size(sv_open1)
file_bin_close(sv_open1)

max_files+=1

// sk_file_list(파일명)
