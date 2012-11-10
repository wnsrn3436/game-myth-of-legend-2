//파일리스트를 만들어줌(추출한 파일)

var sv_open1;
sv_open1=0

files[max_files]=argument0+dlrc_file_na[argument1]

sv_open1=file_bin_open(files[max_files], 0)
files_size[max_files]=file_bin_size(sv_open1)
file_bin_close(sv_open1)

max_files+=1

// sk_dlrc_file_list_2(폴더명, 인덱스)
