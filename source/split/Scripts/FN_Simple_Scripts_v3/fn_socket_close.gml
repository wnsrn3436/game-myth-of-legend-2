if !ds_list_find_value(argument0, 1)
{
    var i, skv_list, skv_byte;
    
    skv_list=ds_list_find_value(argument0, 5)
    skv_byte=ds_list_size(skv_list)
    for(i=0; i!=skv_byte; i+=1){socket_destroy(ds_list_find_value(skv_list, i))}
    ds_list_destroy(skv_list)
    //join_soket_wait_free
    
    skv_list=ds_list_find_value(argument0, 6)
    skv_byte=ds_list_size(skv_list)
    for(i=0; i!=skv_byte; i+=1){socket_destroy(ds_list_find_value(skv_list, i))}
    ds_list_destroy(skv_list)
    //join_soket_free
    
    ds_list_destroy(ds_list_find_value(argument0, 7))
    //join_message_size_free
}
buffer_destroy(ds_list_find_value(argument0, 3))
ds_list_destroy(argument0)
