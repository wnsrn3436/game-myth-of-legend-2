/*
파일을 읽어 특정 버퍼에 내용을 복사해 넣습니다(쓰기 위치로 지정된 부분에 복사 됩니다).
Argument 0 = 읽어들일 파일의 ID
Argument 1 = 읽어들일 바이트 수.
Argument 2 = 내용을 받아들일 버퍼의 ID. 기본 버퍼에서 받아들이게 하려면 0이라 적거나 비워주세요.
*/
return external_call(global._FilD, argument0, argument1, argument2);