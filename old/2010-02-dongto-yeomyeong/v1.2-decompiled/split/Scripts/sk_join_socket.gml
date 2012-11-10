//만들어진 방에 참가합니다

global._39_client_tcp_=tcpconnect(global._39_ip_, global._39_port_, 1)

if !tcpconnected(global._39_client_tcp_)
{
return 0
}
else
{
global._39_player_name_=argument0
setnagle(global._39_client_tcp_, 1)
return 1
}

// sk_join_socket(이름)
