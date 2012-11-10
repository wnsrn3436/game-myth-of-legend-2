//ip와 dll의 초기설정

global._39_ip_=argument0
global._39_port_=argument2
dllinit(argument1, true, false)

global._39_tcp_=0
global._39_udp_=0
global._39_client_tcp_=0

global._39_client_socket_[9999]=0
global._39_client_msk_=0
global._39_client_msk_su=0
//가입자의 소켓과 최대값

global._39_player_id_=round(random(1000000000000000))
global._39_player_name_=""

global._39_player_m_number_=0
//들어온 플레이어최대수
global._39_player_number_=0
//들어온 플레이어수

global._39_player_c_socket_[9999]=""
//플레이어의 메시지id
global._39_player_c_socket_max=0
//c_socket_max값

global._39_message_id_=0
global._39_mp_send_=0
//보낸 플레이어id
global._39_mp_read_=0
//읽어야할 플레이어id
global._39_mp_name_=""

for(dll_i=0; dll_i!=15; dll_i+=1)
{
global._39_message_st_[dll_i]=""
}
//메시지의 문자열

global._39_message_save_=""
//메시지를 축적하는변수

global._39_message_to_max_=0
//온 메시지의 최대량

// sk_ip_dll_open(ip, dll위치, 포트번호)
