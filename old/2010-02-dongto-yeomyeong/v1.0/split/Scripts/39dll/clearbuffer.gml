/*
Argument 0 = 내용을 비울 버퍼의 ID를 적습니다. 기본 버퍼의 경우는 0이라 적거나 비워둡니다.
ex : clearbuffer() [기본 버퍼] 또는, clearbuffer(second_buffer) 
*/
return external_call(global._BufM, argument0);