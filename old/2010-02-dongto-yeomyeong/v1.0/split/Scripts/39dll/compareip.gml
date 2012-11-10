/*
이 함수는 두 IP를 서로 비교합니다. 둘이 서로 같다면 true 를 돌려줍니다.
-예시-
127.0.01은 127.0.0과 일치합니다.
127.1.0.1은 127.0.0과 일치하지 않습니다.
유동 IP를 사용하는 침입자를 서버에서 밴(Ban) 시킬 때 유용합니다.
Argument 0 = IP
Argument 1 = 비교할 IP
*/
return external_call(global._SokO, argument1, argument0);