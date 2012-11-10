/*
지정한 TCP, 혹은 UDP 소켓으로 부터 정보를 받아들여 기본 버퍼에 복사합니다.
Argument 0 = 정보를 받아들일 소켓 ID
Argument 1 = 받아들일 바이트 수. 부가적인 항목. 포맷이 사용되고 있었다면 해당 포맷으로 받아들입니다.
Argument 2 = 정보를 받아들일 버퍼 ID. 기본 버퍼 사용 시 이 항목을 쓰지 않거나 0이라 쓰면 되겠습니다.

받아들인 바이트 수를 돌려줍니다.
참조 : 기본 버퍼에 받아들이고 싶지 않으면, 다음과 같이 합니다. receivemessage(소켓 ID, 0, 버퍼 ID)
*/
return external_call(global._SokE, argument0, argument1, argument2);