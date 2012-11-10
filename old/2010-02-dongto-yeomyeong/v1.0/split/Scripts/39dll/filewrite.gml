/*
버퍼 내의 정보를 파일에 기록합니다.
Argument 0 = 내용을 기록할 파일의 ID
Argument 1 = 정보를 읽어들일 버퍼의 ID. 기본 버퍼 사용 시 0이라 적거나 비워주세요.
*/

return external_call(global._FilC, argument0, argument1);