//글자를 분해한다.

string1=argument0;
if string_count(argument1,argument0)=0
{
  explode[0]=0;
  explode[1]=0;
}
for (i=0; i<string_count(argument1,argument0); i+=1)
{
  pos=string_pos(argument1,string1);
  explode[i]=string_copy(string1,0,pos-1);
  string1=string_delete(string1,1,pos);
}

/*
해당 변수를 분할시키는 스크립트.
예)
만약 string(30)+"|"+string(20)+"|" 이러한 변수가 왔다면
explode[0]=30
explode[1]=20
으로 바꾸어 버림
*/