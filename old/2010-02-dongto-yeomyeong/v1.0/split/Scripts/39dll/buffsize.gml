/*
해당 버퍼 전체의 바이트 수(크기)를 돌려줍니다.
Argument 0 = 크기를 알아낼 버퍼의 ID를 기록합니다. 기본 버퍼를 읽어낼 경우 0이라 적거나 비워주세요.
*/
return external_call(global._BufQ, argument0);