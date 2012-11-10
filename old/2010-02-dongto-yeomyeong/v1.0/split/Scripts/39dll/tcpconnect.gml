/*
소켓을 생성하고 입력한 IP와 포트로 접속합니다.
Argument0 : 접속할 컴퓨터의 IP
Argument1 : 접속할 포트 번호
Argument2 : Blocking(0)/Non-blocking(1)/Non-blocking++(2) mode.

Non-blocking 모드로 설정하되, 접속 도중에도 게임이 멈추지 않도록 하고 싶다면 Argument2의 값을 2로 해 주세요. 
접속이 되었는지 확인하려면 tcpconnected() 를 사용해주세요.

역주 :
소켓의 모드에는 Blocking 모드와 Non-blocking 모드가 있습니다. 
Blocking 모드는 특정 함수를 사용 시 해당 동작을 완료할 때 까지 동작 실행을 멈추는 모드입니다. 
즉, 함수가 실행되서 값을 반환하기 전까지 다음 내용을 실행하지 않습니다. 따라서 두 명의 유저가 1:1(P2P)로 통신하거나 
하나의 동작만을 처리하면 될 경우에는 Blocking 모드를 사용해도 좋습니다. 그 특정 함수라는 것으로는 tcplisten 이라던가, 
tcpconnect, tcpaccept, receivemessage, sendmessage 등이 있습니다.
그에 비해, Non-Blocking 모드는 위와 같은 함수를 사용 시 값을 반환하건 말건간에 완료되기를 기다리지 않고 다음 동작을 처리하지요. 
나머지 함수들에서의 Blocking Mode라던가 하는 것들도 위의 설명과 동일합니다.
*/
return external_call(global._SokA, argument0, argument1, argument2);