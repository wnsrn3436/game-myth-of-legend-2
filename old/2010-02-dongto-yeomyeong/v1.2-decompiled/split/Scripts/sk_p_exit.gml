//플레이어가 나갓을때 실행

var sv_posed, sv_ok;
sv_ok=0

for(exit_i=0; exit_i!=global._39_player_c_socket_max; exit_i+=1)
{

if sv_ok=0
{
sv_posed=string_pos(string(sk_get_me_send())+"/", global._39_player_c_socket_[exit_i])
if sv_posed>0
{
global._39_player_c_socket_[exit_i]=""
closesocket(global.explode[1001, exit_i])
sv_ok=1
}
}
else
{
global._39_player_c_socket_[exit_i]=global._39_player_c_socket_[exit_i-1]
}

}

if sv_ok=1{global._39_player_c_socket_max-=1}

global._39_player_number_=global._39_player_c_socket_max

for(exit_i=0; exit_i!=global._39_player_number_; exit_i+=1)
{
sv_pdsd=string_pos("/", global._39_player_c_socket_[exit_i])
global.explode[1001, exit_i]=real(string_delete(global._39_player_c_socket_[exit_i],1,sv_pdsd))
}

// sk_p_exit()
