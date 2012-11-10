//메시지가 자기에게로왔는지 확인합니다

if global._39_mp_read_=-1 and global._39_mp_send_!=global._39_player_id_
{
return 1
}
//보낸이를 제외한 전체보내기라면

if global._39_mp_read_=-2
{
return 1
}
//전체보내기라면

if global._39_mp_read_=global._39_player_id_
{
return 1
}
//받아야할 플레이어id가 자신과같다면

return 0

// sk_me_p_check()
