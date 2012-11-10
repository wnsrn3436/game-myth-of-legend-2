//맵저장시 임시파일들을 묶고 암호화함

if filename_ext(save)="" or filename_ext(save)="."{save=filename_change_ext(save, ".maps2")}
//확장자 변경

max_files=0
sk_dlrc_file_list("falp_save.tmp")
sk_dlrc_file_list("falp2_save.tmp")
sk_dlrc_file_list("falp2_c_save.tmp")
sk_dlrc_file_list("falp_m_save.tmp")
sk_dlrc_file_list("falp_c_save.tmp")

sk_dlrc_zip(save, "+|+", "map_file")
for(i=0; i!=max_files; i+=1)
{
sk_dlrc_add(save, i, "+|+", 30)
}

for(i=0; i!=max_files; i+=1){sk_dlrc_delete_2("", i)}

// sk_map_save_too()
