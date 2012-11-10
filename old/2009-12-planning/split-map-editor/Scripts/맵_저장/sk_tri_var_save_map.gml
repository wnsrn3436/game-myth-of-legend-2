//지형 변수를 저장함

with(sys_back_fog)
{

falp_save=file_text_open_write("falp_save.tmp")
falp2_save=file_text_open_write("falp2_save.tmp")
falp2_c_save=file_text_open_write("falp2_c_save.tmp")
falp_m_save=file_text_open_write("falp_m_save.tmp")
falp_c_save=file_text_open_write("falp_c_save.tmp")

for (j = 0; j < fhei; j += 1)
{
for (i = 0; i < fwid; i += 1)
{
file_text_write_string(falp_save, "falp["+string(i)+","+string(j)+"]="+string(falp[i, j]))
file_text_writeln(falp_save)

file_text_write_string(falp2_save, "falp2["+string(i)+","+string(j)+"]="+string(falp2[i, j]))
file_text_writeln(falp2_save)

file_text_write_string(falp2_c_save, "falp2_c["+string(i)+","+string(j)+"]="+string(falp2_c[i, j]))
file_text_writeln(falp2_c_save)

file_text_write_string(falp_m_save, "falp_m["+string(i)+","+string(j)+"]="+string(falp_m[i, j]))
file_text_writeln(falp_m_save)

file_text_write_string(falp_c_save, "falp_c["+string(i)+","+string(j)+"]="+string(falp_c[i, j]))
file_text_writeln(falp_c_save)
}
}

file_text_close(falp_save)
file_text_close(falp2_save)
file_text_close(falp2_c_save)
file_text_close(falp_m_save)
file_text_close(falp_c_save)

}

// sk_tri_var_save_map()
