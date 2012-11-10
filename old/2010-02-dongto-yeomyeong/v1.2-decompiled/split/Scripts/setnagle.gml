/*
naggle(TCP_NODELAY) 알고리즘 사용을 ON/OFF 합니다.
Argument 0 = 설정 대상 소켓
Argument 1 = true/false(true는 Nodelay, false는 delay).

역주 : TCP_NODELAY(39dll에서는 setnagle) 의 경우 Nagle 알고리즘을 사용할 것인지 않을 것인지를 설정하는 명령어 정도 되겠네요.
Nagle 알고리즘은 전송을 효율적으로 하기 위해 작은 데이터를 여러 개 모아 하나의 큰 패킷으로 보내는 방식인데, 
전송의 효율성은 좋지만 한번에 보내려는 전송 량이 적고, 대신 빠른 반응 속도가 필요한 경우에는 
큰 패킷 하나에 담을 만큼 데이터가 차기 전 까지 전송이 지연되므로 오히려 느려지는 경향이 있습니다. 
따라서 상황에 맞게 이를 On/Off 해서 쓰는게 좋겠네요. 
요약하면 On 시 전송 효율은 증가하나 반응 속도가 느려질 수 있고, 
Off 시 반응 속도는 빨라지나 전송 효율이 떨어지고 시스템이 부하가 늘어납니다.
*/
return external_call(global._SokT, argument0, argument1);