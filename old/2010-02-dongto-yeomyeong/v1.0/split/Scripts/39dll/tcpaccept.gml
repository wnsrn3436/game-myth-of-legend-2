/*
접속을 받아들일 소켓에서, 접속 시도를 확인합니다.
Argument 0 : 접속 소켓 ID
Argument 1 : Blocking(0)/Non-blocking(1)

새로 생성된 소켓(접속한 상대방에 대한)의 ID나, 접속이 없을 시 -1 값을 돌려줍니다.
*/
return external_call(global._SokC, argument0, argument1);