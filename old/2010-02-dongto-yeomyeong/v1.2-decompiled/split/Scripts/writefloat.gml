/*
버퍼 내에 4 바이트의 정보를 기록합니다(실수 값이며, 소수점을 포함합니다)
Argument 0 = 값(0~255)
Argument 1 = 값을 기록할 버퍼 ID. 기본 버퍼 사용 시 0이라 적거나 쓰지 않아도 좋습니다.
*/
return external_call(global._BufE, argument0, argument1);