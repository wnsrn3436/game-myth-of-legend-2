//파일압축   create_zip("zip 파일 명", "경로", "압축 할 파일 명") 

global._2 = external_define("ml_uns.dll","create_zip",0,ty_string,3,ty_string,ty_string,ty_string);
external_call(global._2,argument0,argument1,argument2);