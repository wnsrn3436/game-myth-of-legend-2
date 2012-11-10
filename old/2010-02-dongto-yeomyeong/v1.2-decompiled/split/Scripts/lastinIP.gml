/*
가장 최근에 어떤 소켓에라도 접근을 시도한 상대방의 IP를 돌려줍니다.
다음과 같은 상황에 IP를 돌려주게 됩니다.
1. 당신이 메세지를 받았을 때, listinIP()  함수는 메세지를 보냈던 사람의 IP를 돌려줍니다.
2. 당신이 tcpaccept()를 통해 접속을 허용한 상대방의 IP 주소를 돌려줍니다.
*/
return external_call(global._SokJ);