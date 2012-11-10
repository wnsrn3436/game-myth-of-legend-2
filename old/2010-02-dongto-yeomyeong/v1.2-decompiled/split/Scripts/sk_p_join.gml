//플레이어 참가시 스크립트

var sv_pdsd;

global._39_player_c_socket_[global._39_player_c_socket_max]=string(sk_get_me_send())+"/"+string(global._39_client_socket_[global._39_client_msk_su])
global._39_player_m_number_+=1
//등록완료

global._39_player_c_socket_max+=1

global._39_player_number_=global._39_player_c_socket_max

for(join_i=0; join_i!=global._39_player_number_; join_i+=1)
{
sv_pdsd=string_pos("/", global._39_player_c_socket_[join_i])
global.explode[1001, join_i]=real(string_delete(global._39_player_c_socket_[join_i],1,sv_pdsd))
}

global._39_client_msk_-=1
global._39_client_msk_su+=1

// sk_p_join()
