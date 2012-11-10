// 오브젝트를 무작위로 뽑아냄

var __inum, __inst, __i, __cchk, __ccnt;
__inum = instance_number(argument0);
__ccnt = 0;

if (__inum < 1) 
{
return -1;
} 
else 
{
for (__i = 0; __i < __inum; __i += 1) {
__inst = instance_find(argument0, __i);
if (point_distance(x, y, __inst.x, __inst.y) < argument1)
{
__cchk[__ccnt] = __inst;
__ccnt += 1;
}
}
if (__ccnt)
return __cchk[ceil(random(__ccnt)) - 1];
else
return -1;
}

// sk_instance_range_random(오브젝트, 범위)
