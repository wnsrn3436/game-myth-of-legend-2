//포그에 시야를냅니다.

var fog_j, fog_fwid, fog_fhei, fog_ran;
fog_j=0; fog_fwid=argument0.fwid; fog_fhei=argument0.fhei; fog_ran=argument3/10+2

if fog_ran<=2{fog_ran=0}

dx = min(max(round(argument1/ argument0.fgrid), 0), fog_fwid);
dy = min(max(round(argument2 / argument0.fgrid), 0), fog_fhei);
argument0.falp[dx, dy] = 0;

for(i=fog_ran; i>0; i-=1)
{
for(u=0; u<i; u+=1)
{
if fog_fwid>=dx+u-i+1 and fog_fhei>=dy+fog_j and dx+u-i+1>=0 and dy+fog_j>=0{argument0.falp[dx+u-i+1, dy+fog_j]=argument4}
if dx-u+i-1>=0 and fog_fhei>=dy+fog_j and fog_fwid>=dx-u+i-1 and dy+fog_j>=0{argument0.falp[dx-u+i-1, dy+fog_j]=argument4}
if fog_fwid>=dx+u-i+1 and dy-fog_j>=0 and dx+u-i+1>=0 and fog_fhei>=dy-fog_j{argument0.falp[dx+u-i+1, dy-fog_j]=argument4}
if dx-u+i-1>=0 and dy-fog_j>=0 and fog_fwid>=dx-u+i-1 and fog_fhei>=dy-fog_j{argument0.falp[dx-u+i-1, dy-fog_j]=argument4}
}
fog_j+=1
}

// sk_fog_obfog_j(포그시스템오브젝트, x, y, 범위(10단위), 포그종류(0=포그x 1=포그 2=안개))
