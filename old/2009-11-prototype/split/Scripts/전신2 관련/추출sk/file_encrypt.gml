//파일암호넣기  file_encrypt("암호화 될 파일 명", "암호 코드", "암호화된 파일명")

global._4 = external_define("ml_uns.dll","file_encrypt",0,ty_string,3,ty_string,ty_string,ty_string);
external_call(global._4,argument0,argument1,argument2);