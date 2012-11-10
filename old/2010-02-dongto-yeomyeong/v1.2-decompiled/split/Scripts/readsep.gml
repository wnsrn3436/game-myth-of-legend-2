/*
버퍼 내에서 문자를 찾아 그 문자 이전 부분의 내용을 돌려주고 버퍼의 읽어들일 부분을 그 다음 부분으로 설정합니다.
Argument 0 : 분리 기준 문자
Argument 1 : 읽어들일 버퍼의 ID. 기본 버퍼 사용 시 0이라 적거나 쓰지 않아도 좋습니다.

예시 :
writechars("Hello:World:")
show_message(readsep(":")) //Hello라고 표시됩니다.
show_message(readsep(":") //World라고 표시됩니다.
*/
return external_call(global._BufAG, argument0, argument1);