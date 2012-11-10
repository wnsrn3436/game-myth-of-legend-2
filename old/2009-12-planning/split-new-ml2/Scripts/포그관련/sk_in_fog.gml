//포그에있는지 확인함

var fog_fwid, fog_fhei;
fog_fwid=argument0.fwid; fog_fhei=argument0.fhei

dx = min(max(round(argument1/ argument0.fgrid), 0), fog_fwid);
dy = min(max(round(argument2 / argument0.fgrid), 0), fog_fhei);

if argument3=1
{
if argument0.falp[dx, dy]=1
{return true}
else
{return false}
}

if argument3=2
{
if argument0.falp[dx, dy]=2
{return true}
else
{return false}
}

if argument3=0
{
if argument0.falp[dx, dy]=0
{return true}
else
{return false}
}

// sk_in_fog(포그시스템오브젝트, x, y, 포그종류(0=포그x 1=포그 2=안개))
