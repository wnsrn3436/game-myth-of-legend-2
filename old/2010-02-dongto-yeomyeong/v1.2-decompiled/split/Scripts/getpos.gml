/*
정보를 읽거나 기록하는 지점을 돌려줍니다.
Argument 0 = 읽기/쓰기 지점(0 = 쓰기 지점, 1 = 읽기 지점)
Argument 1 = 어떤 버퍼의 지점을 읽어낼 것인지 설정합니다. 
버퍼 ID 값을 적되 기본 버퍼의 지점을 읽는 경우에는 0이라 적거나 비워주세요.
*/
return external_call(global._BufO, argument0, argument1);