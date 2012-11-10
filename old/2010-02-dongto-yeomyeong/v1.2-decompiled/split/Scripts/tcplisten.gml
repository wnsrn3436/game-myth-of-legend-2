/*
특정 포트에서의 접속을 받아들일 소켓을 생성합니다. 
Argument 0 : 접속을 받아들일 포트 번호
Argument 1 : 최대로 접속할 수 있는 인원 수(접속한 인원 수가 아니라)
Argument 2 :Blocking(0)/Non-blocking(1). tcpaccept 함수와 관련되어있습니다.

생성된 소켓의 ID, 혹은 오류 발생 시 -1를 돌려줍니다.
*/
return external_call(global._SokB, argument0, argument1, argument2);