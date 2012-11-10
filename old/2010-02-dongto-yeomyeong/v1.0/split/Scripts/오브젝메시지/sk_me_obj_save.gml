//자신에게 메시지내용을 저장함

if global._39_message_id_=sk_get_o_space()
{
message=1
mp_send[message_max]=global._39_mp_send_
mp_read[message_max]=global._39_mp_read_
mp_name[message_max]=global._39_mp_name_

for(save_i=0; save_i!=15; save_i+=1){message_content[message_max, save_i]=sk_me_read(1, save_i)}

message_max+=1
}

// sk_me_obj_save()
