var i, j, len, col, alp, dx, char, ichar, eol;

argument1 = argument1 + global.__sexvalign * (string_count(chr(10), argument2) + 1) * global.__sexheight;
argument2 = argument2 + chr(10)
len = string_length(argument2) + 1;
col = draw_get_color();
alp = draw_get_alpha();
dx = argument0;
eol = 1

for (i = 1; i < len; i += 1) {
 char = ord(string_char_at(argument2, i));
 if ((char >> 7) = 1) {
  i += 1;
  dx += global.__sexwidth[1] * global.__sexhalign;
 } else {
  if (char != 10) {
    dx += global.__sexwidth[0] * global.__sexhalign;
  } else {
   for (j = eol; j < i; j += 1) {
    ichar = ord(string_char_at(argument2, j));
    if ((ichar >> 7) = 1) {
      if (ichar = $a4)
        ichar = (ichar - $a4) * 94 + (ord(string_char_at(argument2, j + 1)) - $a1);
      else
       ichar = (ichar - $b0) * 94 + (ord(string_char_at(argument2, j + 1)) - $6e);
      if (ichar >= 0)
       draw_sprite_part_ext(global.__sexfont, (ichar & $f00) >> 8, (ichar & $f) * global.__sexwidth[1], ((ichar & $f0) >> 4) * global.__sexheight, global.__sexwidth[1], global.__sexheight, dx, argument1, 1, 1, col, alp);
    j += 1;
    dx += global.__sexwidth[1];
    } else {
      draw_sprite_part_ext(global.__sexfont, 10, (ichar & $f) * global.__sexwidth[0], ((ichar & $f0) >> 4) * global.__sexheight, global.__sexwidth[0], global.__sexheight, dx, argument1, 1, 1, col, alp);
      dx += global.__sexwidth[0];
    }
   }
   eol = i + 1
   argument1 += global.__sexheight;
   dx = argument0;
   continue;
  }
 }
}
