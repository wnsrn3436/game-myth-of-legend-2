//새로운 방을 만듭니다

global._39_tcp_=tcplisten(global._39_port_, argument0, 1)
global._39_udp_=udpconnect(global._39_port_, 1)

if !global._39_tcp_ or !global._39_udp_
{
return 0
}
else
{
if sk_join_socket(argument1){global._39_player_id_=0; return 1}
else{return 0}
}

// sk_make_socket(방최대인원, 이름)
