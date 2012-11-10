/*
한 버퍼 내의 내용을 다른 버퍼의 끝 부분에 삽입합니다.
Argument 0 = 내용을 붙여넣기할 버퍼(목표)
Argument 1 = 내용을 복사해올 버퍼(소스)
참조 : 0이 기본 버퍼입니다.
*/
return external_call(global._BufAC, argument0, argument1);