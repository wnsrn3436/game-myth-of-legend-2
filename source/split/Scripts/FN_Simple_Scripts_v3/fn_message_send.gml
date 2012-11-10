if ds_list_find_value(argument0, 1)
{
    if argument1!=-1
    {
        var skv_socket;
        skv_socket=ds_list_find_value(argument0, 0)
        write_uint(skv_socket, 10+buffer_size(fnv_sned))
        write_uint(skv_socket, argument1+6)
        write_uint(skv_socket, ds_list_find_value(argument0, 1))
        write_ushort(skv_socket, argument2)
        write_buffer(skv_socket, fnv_sned)
        socket_send(skv_socket)
    }
    else
    {
        var skv_saved_buffer;
        skv_saved_buffer=ds_list_find_value(argument0, 3)
        write_uint(skv_saved_buffer, buffer_size(fnv_sned))
        write_uint(skv_saved_buffer, ds_list_find_value(argument0, 1))
        write_ushort(skv_saved_buffer, argument2)
        write_buffer(skv_saved_buffer, fnv_sned)
    }
}
else
{
    buffer_clear(global._fn_noone_buffer_)
    write_uint(global._fn_noone_buffer_, 0)
    write_ushort(global._fn_noone_buffer_, argument2)
    write_buffer(global._fn_noone_buffer_, fnv_sned)
    if argument1=0 or argument1=-1
    {
        write_uint(ds_list_find_value(argument0, 3), buffer_size(fnv_sned))
        write_buffer(ds_list_find_value(argument0, 3), global._fn_noone_buffer_)
    }
    else if argument1=-2 or argument1=-6
    {
        var i, skv_list, skv_byte, skv_soket;
        skv_list=ds_list_find_value(argument0, 6)
        skv_byte=ds_list_size(skv_list)
        for(i=0; i!=skv_byte; i+=1)
        {
            skv_soket=ds_list_find_value(skv_list, i)
            write_uint(skv_soket, buffer_size(global._fn_noone_buffer_))
            write_buffer(skv_soket, global._fn_noone_buffer_)
            socket_send(skv_soket)
        }
    }
    else if argument1<-2
    {
        var i, skv_list, skv_byte, skv_soket;
        write_uint(ds_list_find_value(argument0, 3), buffer_size(fnv_sned))
        write_buffer(ds_list_find_value(argument0, 3), global._fn_noone_buffer_)
        skv_list=ds_list_find_value(argument0, 6)
        skv_byte=ds_list_size(skv_list)
        for(i=0; i!=skv_byte; i+=1)
        {
            skv_soket=ds_list_find_value(skv_list, i)
            write_uint(skv_soket, buffer_size(global._fn_noone_buffer_))
            write_buffer(skv_soket, global._fn_noone_buffer_)
            socket_send(skv_soket)
        }
    }
    else
    {
        var skv_soket;
        skv_soket=ds_list_find_value(ds_list_find_value(argument0, 6), ds_list_find_index(ds_list_find_value(argument0, 6), argument1))
        write_uint(skv_soket, buffer_size(global._fn_noone_buffer_))
        write_buffer(skv_soket, global._fn_noone_buffer_)
        socket_send(skv_soket)
    }
}
