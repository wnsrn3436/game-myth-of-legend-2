/*
지정 소켓에서 받아들인 정보를 기본 버퍼에 복사하지만, receivemessage와는 달리 수신 버퍼의 내용을 
지우지 않습니다.
Argument 0 = 정보를 받아들일 TCP 또는 UDP 소켓
Argument 1 = 받아들일 바이트 수, 부가적인 항목(이 항목을 쓰지 않는다면, 받을 수 있는 만큼 받아들입니다)
Argument 2 = 정보를 받아들일 버퍼 ID. 앞서와 마찬가지로, 기본 버퍼 사용 시 이 항목을 쓰지 않거나 
0이라 입력해 둡니다.
받아들인 바이트 수를 돌려줍니다.

참조 : 기본 버퍼에 받아들이고 싶지 않으면, 다음과 같이 씁니다. peekmessage(소켓 ID, 0, 버퍼 ID).
또는, peekmessage(소켓 ID, 받아들일 바이트 수, 버퍼 ID);
*/
return external_call(global._SokS, argument0, argument1, argument2);