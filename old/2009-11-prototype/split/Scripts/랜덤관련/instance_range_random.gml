var __inum, __inst, __i, __cchk, __ccnt;
__inum = instance_number(argument0);
__ccnt = 0;
if (__inum < 1) {
 return -1; // 해당 오브젝트 파생 인스턴스가 존재하지 않는듯
} else {
 for (__i = 0; __i < __inum; __i += 1) {
  __inst = instance_find(argument0, __i);
  if (point_distance(x, y, __inst.x, __inst.y) < argument1) {
   __cchk[__ccnt] = __inst;
   __ccnt += 1;
  }
 }
 if (__ccnt)
  return __cchk[ceil(random(__ccnt)) - 1]; // 0만 아니면 알아서 반환할듯
 else
  return -1;
}