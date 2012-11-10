var __i, __len, __res, __dx;

__dx = argument0;
__len = string_length(argument2) + 1;
for (__i = 1; __i < __len; __i += 1) {
 __res = sex_draw_char(__dx, argument1, argument3, string_copy(argument2, __i, 2));
 __i += __res;
 __dx += global.__sexwidth[__res];
}