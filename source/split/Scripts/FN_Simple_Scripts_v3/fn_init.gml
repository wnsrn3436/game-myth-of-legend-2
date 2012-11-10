/**************************************************************************

FN Simple Scripts v3.2

Maker --- wnsrn3436@naver.com

**************************************************************************/

globalvar fnv_sned, fnv_message, fnv_socket, fnv_list;
fnv_sned=buffer_create()
fnv_message=buffer_create()
fnv_socket=0
fnv_list=0

global._fn_noone_list_=ds_list_create()
global._fn_noone_buffer_=buffer_create()
global._fn_exit_player_=ds_stack_create()

global._fn_message_id_=0
global._fn_message_send_id_=0

global._fn_socket_error_str_=""
global._fn_join_check_length_=string_length(cfn_check)
