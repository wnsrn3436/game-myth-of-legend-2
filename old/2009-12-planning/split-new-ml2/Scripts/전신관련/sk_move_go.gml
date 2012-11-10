//이동하는 방법 2가지

if argument0=0
{
mp_potential_step(argument1,argument2,argument3,0)
}

if argument0=1
{
if argument3>distance_to_point(argument1,argument2)
{
argument3=distance_to_point(argument1,argument2)
if argument3!=0{argument3+=10}
}
direction=point_direction(x,y,argument1,argument2)
x+=lengthdir_x(argument3,direction)
y+=lengthdir_y(argument3,direction)
}

// sk_move_go(0또는1, x, y, 속도)
