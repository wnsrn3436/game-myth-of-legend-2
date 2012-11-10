/*
읽거나 쓰기 위해 파일을 열거나 새로 만듭니다.
Argument 0 = 파일 명
Argument 1 = 열기 모드, 0 = 읽기, 1 = 쓰기, 2 = 읽고 쓰기
이 함수는 열린 파일의 ID를 돌려줍니다.
*/
return external_call(global._FilA, argument0, argument1);