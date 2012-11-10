/*
해당 소켓을 차단 모드/접속 허용 모드 둘 중 하나로 설정합니다.

Argument 0 = 적용할 소켓
Argument 1 = 적용할 모드, Blocking(0)/Non-blocking(1)
*/
return external_call(global._SokF, argument0, argument1);