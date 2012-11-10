var skv_socket, skv_list, skv_byte;
skv_socket=tcp_connect(argument0, argument1)
while(socket_connecting(skv_socket)){}
socket_sendbuffer_limit(skv_socket, argument2)
write_string(skv_socket, cfn_check)
socket_send(skv_socket)
while(1)
{
    if tcp_eof(skv_socket){global._fn_socket_error_str_=socket_error(skv_socket); socket_destroy(skv_socket); return 0}
    if tcp_receive(skv_socket, 5)
    {
        skv_byte=read_uint(skv_socket)
        if skv_byte>0
        {
            skv_list=ds_list_create()
            ds_list_add(skv_list, skv_socket)
            ds_list_add(skv_list, skv_byte)
            ds_list_add(skv_list, 0)
            ds_list_add(skv_list, buffer_create())
            //socket(0), player_id(1), server_message_size(2), saved_buffer(3)
            return skv_list
        }
        else
        {
            switch(read_ubyte(skv_socket))
            {
                case 1: global._fn_socket_error_str_=cfn_error_1; break;
                case 2: global._fn_socket_error_str_=cfn_error_3; break;
                case 3: global._fn_socket_error_str_=cfn_error_4; break;
            }
            socket_destroy(skv_socket)
            return 0
        }
    }
}
