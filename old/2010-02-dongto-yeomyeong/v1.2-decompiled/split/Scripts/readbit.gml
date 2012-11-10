/*
숫자에서 특정 지점의 비트 값(true, false)을 읽어 돌려줍니다.
Argument 0 = 숫자
Argument 1 = 비트 위치(0~7)
*/
return (argument0 & power(2, argument1))>0;