var skv_socket, skv_list;
skv_socket=tcp_listen(argument0)
if socket_has_error(skv_socket){global._fn_socket_error_str_=socket_error(skv_socket); socket_destroy(skv_socket); return 0}

skv_list=ds_list_create()
ds_list_add(skv_list, skv_socket)
ds_list_add(skv_list, 0)
ds_list_add(skv_list, argument1)
ds_list_add(skv_list, buffer_create())
ds_list_add(skv_list, -1)
ds_list_add(skv_list, ds_list_create())
ds_list_add(skv_list, ds_list_create())
ds_list_add(skv_list, ds_list_create())
//socket(0), player_id(1), limit(2), saved_buffer(3), join_accept_max(4), join_soket_wait(5), join_soket(6), join_message_size(7)

return skv_list
