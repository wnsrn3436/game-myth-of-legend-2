/*
버퍼 내의 정보를 TCP나 UDP 소켓을 통해 보냅니다.

Argument0 = 보낼 상대에 대한 소켓 ID
Argument1 = 상대방의 IP 주소(UDP에만 해당)
Argument2 = 상대방의 포트 주소(UDP에만 해당)
Argument3 = 보낼 버퍼의 ID. 기본 버퍼를 사용하려면 이 부분은 쓰지 않거나 0이라 적어주세요.

보낸 바이트 수와 메세지 형식을 돌려줍니다.
참조 : TCP 소켓을 통해 보낼 때, 기본 버퍼를 쓰고 싶지 않다면 다음과 같이 써 주세요.
sendmessage(소켓 ID, "", 0, 버퍼 ID)
*/
return external_call(global._SokD, argument0, argument1, argument2, argument3);