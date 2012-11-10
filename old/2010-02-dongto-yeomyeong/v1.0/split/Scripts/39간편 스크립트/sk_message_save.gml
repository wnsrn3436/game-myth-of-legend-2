//메시지를 축적합니다

if global._39_message_save_!=""{global._39_message_save_+=chr(39)+" "+chr(39)}

global._39_message_save_+=string(argument0)+chr(34)+" "+chr(34)
global._39_message_save_+=string(global._39_player_id_)+chr(34)+" "+chr(34)
global._39_message_save_+=string(argument1)+chr(34)+" "+chr(34)
global._39_message_save_+=string(global._39_player_name_)+chr(34)+" "+chr(34)

for(save_i=0; save_i!=14; save_i+=1)
{
global._39_message_save_+=string(argument[save_i+2])+chr(34)+" "+chr(34)
}

// sk_message_save(메시지id, 보낼플레이어id(-1=나를제외한 전체), 메시지, 메시지, ‥‥)
