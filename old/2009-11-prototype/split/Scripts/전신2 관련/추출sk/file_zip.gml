//압축파일 추가넣기 file_zip("zip 파일 명", "경로", "압축 파일에 추가 할 파일 명")

global._1 = external_define("ml_uns.dll","file_zip",0,ty_string,3,ty_string,ty_string,ty_string);
external_call(global._1,argument0,argument1,argument2);