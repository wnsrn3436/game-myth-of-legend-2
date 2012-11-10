//메시지가 왓는지 확인합니다

var messagesize;

messagesize=receivemessage(global._39_client_tcp_)

if messagesize>0
{
global._39_message_to_max_=sk_dit_car(readstring(), 999, chr(39)+" "+chr(39))
return 1
}
else
{
return 0
}

// sk_message_check()
