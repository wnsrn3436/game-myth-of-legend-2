/*
writefloat와 같지만 더 큰 숫자를 기록할 수 있습니다. 구체적으로는 게임 메이커가 지원하는 모든 숫자를. 
주의하세요, 이 함수는 한번에 8 바이트를 써 버립니다.
버퍼 내에 8 바이트의 정보를 기록합니다(실수 값이며, 소수점을 포함합니다)
Argument 0 = 값(0~255)
Argument 1 = 값을 기록할 버퍼 ID. 기본 버퍼 사용 시 0이라 적거나 쓰지 않아도 좋습니다.
*/
return external_call(global._BufF, argument0, argument1);