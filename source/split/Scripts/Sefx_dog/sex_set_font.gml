// set font setting here
switch (argument0) {
 case 0:
  global.__sexfont = spr_font32;
  global.__sexwidth[0] = 16;
  global.__sexwidth[1] = 32;
  global.__sexheight = 32;
  global.__sexhalign = -median(0, argument1, 2) / 2
  global.__sexvalign = -median(0, argument2, 2) / 2
  break;
 case 1:
  global.__sexfont = spr_font16;
  global.__sexwidth[0] = 8;
  global.__sexwidth[1] = 16;
  global.__sexheight = 16;
  global.__sexhalign = -median(0, argument1, 2) / 2
  global.__sexvalign = -median(0, argument2, 2) / 2
  break;
}
