/*
버퍼에서 앞으로 읽어낼 양이 얼마나 남았는지를 체크해서 돌려줍니다. 
달리 표현하자면 버퍼 크기(buffersize) - 버퍼의 읽기 부분(getpos(1, 버퍼 ID)) 가 되겠습니다.
Argument 0 = 체크할 버퍼의 ID를 입력합니다. 기본 버퍼를 체크하려면 0이라 적거나 비워주세요.
*/
return external_call(global._BufAE, argument0);