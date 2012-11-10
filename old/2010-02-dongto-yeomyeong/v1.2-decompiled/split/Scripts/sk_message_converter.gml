//방장에게온 메시지를 다시 모두에게 보냅니다(방장만가능)

var messagesize, player_number, sv_rt_sock;

global._39_client_msk_su=0

player_number=global._39_player_number_
if player_number=0{player_number=1}

for(con_i=0; con_i!=global._39_client_msk_; con_i+=1)
{
messagesize=receivemessage(global._39_client_socket_[con_i])
if messagesize>0
{
global._39_message_st_[0]=readstring()
clearbuffer()
writestring(global._39_message_st_[0])
sendmessage(global.explode[1001, 0])
}
}
//가입햇는데 안적인얘들을 가입시킴

/*
새플레이어 받기
*/
if argument0=0
{
sv_rt_sock=tcpaccept(global._39_tcp_, true)
if sv_rt_sock>=0{global._39_client_socket_[global._39_client_msk_]=sv_rt_sock; global._39_client_msk_+=1}
//새로얻기
}
else{sv_rt_sock=-1; global._39_client_msk_=0}

messagesize=receivemessage(sv_rt_sock)

if messagesize>0
{
if global._39_player_m_number_=0{global.explode[1001, 0]=sv_rt_sock}
//방장이오류가난 상황을대비

global._39_message_st_[0]=readstring()
clearbuffer()
writestring(global._39_message_st_[0])

if global._39_player_m_number_=0{sendmessage(sv_rt_sock)}
//방장이 지가참가햇다고 보냇으면 방장에게보냄

for(con_i=0; con_i!=global._39_player_number_; con_i+=1)
{
sendmessage(global.explode[1001, con_i])
}
//얻은 플레이어리스트대로 보냄
}
/*
*/

for(con_j=0; con_j!=player_number; con_j+=1)
{
messagesize=receivemessage(global._39_udp_)
//새로들어온 가입메시지를받거나 udp에서 받음

if messagesize<=0
{
if global._39_player_number_>0{messagesize=receivemessage(global.explode[1001, con_j])}
//저장된 플레이어 포트로 메시지를받음
}

if messagesize>0
{
if global._39_player_m_number_=0{global.explode[1001, 0]=sv_rt_sock}
//방장이오류가난 상황을대비

global._39_message_st_[0]=readstring()
clearbuffer()
writestring(global._39_message_st_[0])

if global._39_player_m_number_=0{sendmessage(sv_rt_sock)}
//방장이 지가참가햇다고 보냇으면 방장에게보냄

for(con_i=0; con_i!=global._39_player_number_; con_i+=1)
{
sendmessage(global.explode[1001, con_i])
}
//얻은 플레이어리스트대로 보냄
}

}

// sk_message_converter(0=신입받기 1=신입안받기)
