/*
버퍼 내에 2 바이트의 정보를 기록합니다(단, 정수 값).
Argument 0 = 값(-32768~32767)
Argument 1 = 값을 기록할 버퍼 ID. 기본 버퍼 사용 시 0이라 적거나 쓰지 않아도 좋습니다.
*/
return external_call(global._BufC, argument0, argument1);