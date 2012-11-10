/*
버퍼로부터 문자열(널-종료 문자열, writestring)을 읽어들입니다.
Argument 0 = 읽어들일 문자열 수
Argument 1 = 읽어들일 버퍼의 ID. 기본 버퍼 사용 시 0이라 적거나 쓰지 않아도 좋습니다.
*/
return external_call(global._BufH, argument0);