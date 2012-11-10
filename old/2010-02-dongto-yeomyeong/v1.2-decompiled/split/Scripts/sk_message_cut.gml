//온 메시지를 알맞게 자릅니다

var sv_numd;

sv_numd=sk_dit_car(explode[999, argument0], 1000, chr(34)+" "+chr(34))

global._39_message_id_=real(explode[1000, 0])
global._39_mp_send_=real(explode[1000, 1])
global._39_mp_read_=real(explode[1000, 2])
global._39_mp_name_=explode[1000, 3]

for(cut_i=0; cut_i!=sv_numd-4; cut_i+=1)
{
global._39_message_st_[cut_i]=explode[1000, cut_i+4]
}

// sk_message_cut(인덱스)
