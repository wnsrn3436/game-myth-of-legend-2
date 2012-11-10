fnv_list=argument0
fnv_socket=ds_list_find_value(argument0, 0)

if !ds_list_find_value(argument0, 1)
{
    var i, j, skv_list, skv_server_size, skv_size, skv_var, skv_byte;
    
    skv_list=ds_list_find_value(argument0, 5)
    skv_byte=socket_accept(fnv_socket)
    while(skv_byte>0)
    {
        if ds_list_find_value(argument0, 4)=-1 or ds_list_find_value(argument0, 4)>(ds_list_size(skv_list)+ds_list_size(ds_list_find_value(argument0, 6)))
        {
            socket_sendbuffer_limit(skv_byte, ds_list_find_value(argument0, 2))
            ds_list_add(skv_list, skv_byte)
        }
        else
        {
            if !ds_list_find_value(argument0, 4){write_uint(skv_byte, 0); write_ubyte(skv_byte, 2)}
            else{write_uint(skv_byte, 0); write_ubyte(skv_byte, 1)}
            socket_send(skv_byte)
            socket_destroy(skv_byte)
        }
        skv_byte=socket_accept(fnv_socket)
    }
    
    skv_server_size=ds_list_size(skv_list)
    for(i=0; i!=skv_server_size; i+=1)
    {
        skv_var=ds_list_find_value(skv_list, i)
        if tcp_eof(skv_var){socket_destroy(skv_var); ds_list_delete(skv_list, i); i-=1; skv_server_size-=1; continue}
        if tcp_receive_available(skv_var)
        {
            if read_string(skv_var, global._fn_join_check_length_)=cfn_check and !buffer_bytes_left(skv_var)
            {
                write_uint(skv_var, skv_var)
                write_ubyte(skv_var, 0)
                socket_send(skv_var)
                ds_list_delete(skv_list, i)
                ds_list_add(ds_list_find_value(argument0, 6), skv_var)
                ds_list_add(ds_list_find_value(argument0, 7), 0)
                i-=1
                skv_server_size-=1
                continue
            }
            write_uint(skv_var, 0); write_ubyte(skv_var, 3); socket_send(skv_var); socket_destroy(skv_var); ds_list_delete(skv_list, i); i-=1; skv_server_size-=1; continue
        }
    }
    
    skv_list=ds_list_find_value(argument0, 6)
    skv_server_size=ds_list_size(skv_list)
    for(i=0; i!=skv_server_size; i+=1)
    {
        skv_var=ds_list_find_value(skv_list, i)
        if tcp_eof(skv_var)
        {
            socket_destroy(skv_var)
            ds_stack_push(global._fn_exit_player_, skv_var)
            ds_list_delete(skv_list, i)
            ds_list_delete(skv_list+1, i)
            i-=1
            skv_server_size-=1
            continue
        }
        if !ds_list_find_value(skv_list+1, i){if tcp_receive(skv_var, 4){ds_list_replace(skv_list+1, i, read_uint(skv_var))}}
        if ds_list_find_value(skv_list+1, i)
        {
            if tcp_receive(skv_var, ds_list_find_value(skv_list+1, i))
            {
                skv_byte=read_uint(skv_var)-6
                switch(skv_byte)
                {
                    case 0:
                        write_uint(ds_list_find_value(argument0, 3), socket_receivebuffer_size(skv_var)-10)
                        write_buffer_part(ds_list_find_value(argument0, 3), skv_var, socket_receivebuffer_size(skv_var))
                        break;
                    case -2:
                        for(j=0; j<i; j+=1)
                        {
                            write_uint(ds_list_find_value(skv_list, j), socket_receivebuffer_size(skv_var)-4)
                            buffer_set_readpos(skv_var, 4)
                            write_buffer_part(ds_list_find_value(skv_list, j), skv_var, socket_receivebuffer_size(skv_var))
                            socket_send(ds_list_find_value(skv_list, j))
                        }
                        skv_size=ds_list_size(skv_list)
                        for(j=i+1; j<skv_size; j+=1)
                        {
                            write_uint(ds_list_find_value(skv_list, j), socket_receivebuffer_size(skv_var)-4)
                            buffer_set_readpos(skv_var, 4)
                            write_buffer_part(ds_list_find_value(skv_list, j), skv_var, socket_receivebuffer_size(skv_var))
                            socket_send(ds_list_find_value(skv_list, j))
                        }
                        break;
                    case -3:
                        write_uint(ds_list_find_value(argument0, 3), socket_receivebuffer_size(skv_var)-10)
                        write_buffer_part(ds_list_find_value(argument0, 3), skv_var, socket_receivebuffer_size(skv_var)-4)
                        for(j=0; j<i; j+=1)
                        {
                            write_uint(ds_list_find_value(skv_list, j), socket_receivebuffer_size(skv_var)-4)
                            buffer_set_readpos(skv_var, 4)
                            write_buffer_part(ds_list_find_value(skv_list, j), skv_var, socket_receivebuffer_size(skv_var))
                            socket_send(ds_list_find_value(skv_list, j))
                        }
                        skv_size=ds_list_size(skv_list)
                        for(j=i+1; j<skv_size; j+=1)
                        {
                            write_uint(ds_list_find_value(skv_list, j), socket_receivebuffer_size(skv_var)-4)
                            buffer_set_readpos(skv_var, 4)
                            write_buffer_part(ds_list_find_value(skv_list, j), skv_var, socket_receivebuffer_size(skv_var))
                            socket_send(ds_list_find_value(skv_list, j))
                        }
                        break;
                    case -4:
                        skv_size=ds_list_size(skv_list)
                        for(j=0; j!=skv_size; j+=1)
                        {
                            write_uint(ds_list_find_value(skv_list, j), socket_receivebuffer_size(skv_var)-4)
                            buffer_set_readpos(skv_var, 4)
                            write_buffer_part(ds_list_find_value(skv_list, j), skv_var, socket_receivebuffer_size(skv_var))
                            socket_send(ds_list_find_value(skv_list, j))
                        }
                        break;
                    case -5:
                        write_uint(ds_list_find_value(argument0, 3), socket_receivebuffer_size(skv_var)-10)
                        write_buffer_part(ds_list_find_value(argument0, 3), skv_var, socket_receivebuffer_size(skv_var)-4)
                        skv_size=ds_list_size(skv_list)
                        for(j=0; j!=skv_size; j+=1)
                        {
                            write_uint(ds_list_find_value(skv_list, j), socket_receivebuffer_size(skv_var)-4)
                            buffer_set_readpos(skv_var, 4)
                            write_buffer_part(ds_list_find_value(skv_list, j), skv_var, socket_receivebuffer_size(skv_var))
                            socket_send(ds_list_find_value(skv_list, j))
                        }
                        break;
                    case -6:
                        write_uint(ds_list_find_value(argument0, 3), socket_receivebuffer_size(skv_var)-10)
                        write_buffer_part(ds_list_find_value(argument0, 3), skv_var, socket_receivebuffer_size(skv_var)-4)
                        for(j=0; j<i; j+=1)
                        {
                            write_uint(ds_list_find_value(skv_list, j), socket_receivebuffer_size(skv_var)-4)
                            buffer_set_readpos(skv_var, 4)
                            write_buffer_part(ds_list_find_value(skv_list, j), skv_var, socket_receivebuffer_size(skv_var))
                            socket_send(ds_list_find_value(skv_list, j))
                        }
                        skv_size=ds_list_size(skv_list)
                        for(j=i+1; j<skv_size; j+=1)
                        {
                            write_uint(ds_list_find_value(skv_list, j), socket_receivebuffer_size(skv_var)-4)
                            buffer_set_readpos(skv_var, 4)
                            write_buffer_part(ds_list_find_value(skv_list, j), skv_var, socket_receivebuffer_size(skv_var))
                            socket_send(ds_list_find_value(skv_list, j))
                        }
                        break;
                    default:
                        skv_size=ds_list_find_index(skv_list, skv_byte)
                        write_uint(ds_list_find_value(skv_list, skv_size), socket_receivebuffer_size(skv_var)-4)
                        write_buffer_part(ds_list_find_value(skv_list, skv_size), skv_var, socket_receivebuffer_size(skv_var))
                        socket_send(ds_list_find_value(skv_list, skv_size))
                }
                ds_list_replace(skv_list+1, i, 0)
                i-=1
                continue
            }
        }
    }
    
    global._fn_socket_error_str_=cfn_error_2
    global._fn_message_id_=noone
    while(!ds_stack_empty(global._fn_exit_player_))
    {
        global._fn_message_send_id_=ds_stack_pop(global._fn_exit_player_)
        event_user(cfn_exit_player_event)
    }
}
else
{
    if tcp_eof(fnv_socket){global._fn_socket_error_str_=socket_error(fnv_socket); event_user(cfn_server_error_event); return 0}
    while(1)
    {
        if !ds_list_find_value(argument0, 2){if tcp_receive(fnv_socket, 4){ds_list_replace(argument0, 2, read_uint(fnv_socket))}}
        if ds_list_find_value(argument0, 2)
        {
            if tcp_receive(fnv_socket, ds_list_find_value(argument0, 2))
            {
                write_uint(ds_list_find_value(argument0, 3), ds_list_find_value(argument0, 2)-6)
                write_buffer(ds_list_find_value(argument0, 3), fnv_socket)
                ds_list_replace(argument0, 2, 0)
                continue
            }
        }
        break
    }
}

var skv_pos;
while(buffer_bytes_left(ds_list_find_value(argument0, 3)))
{
    buffer_clear(fnv_message)
    skv_pos=read_uint(ds_list_find_value(argument0, 3))
    global._fn_message_send_id_=read_uint(ds_list_find_value(argument0, 3))
    global._fn_message_id_=read_ushort(ds_list_find_value(argument0, 3))
    write_buffer_part(fnv_message, ds_list_find_value(argument0, 3), skv_pos)
    event_user(cfn_message_event)
}
buffer_clear(ds_list_find_value(argument0, 3))
