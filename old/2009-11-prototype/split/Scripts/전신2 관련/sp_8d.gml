if(direction<=22.5 || direction>315+22.5) and sprite_index!=argument0
{sprite_index = argument0}         //오른쪽
if(direction>22.5 && direction<=45+22.5) and sprite_index!=argument1
{sprite_index = argument1}     //위 오른쪽
if(direction>45+22.5 && direction<=90+22.5) and sprite_index!=argument2
{sprite_index = argument2}        //위
if(direction>90+22.5 && direction<=135+22.5) and sprite_index!=argument3
{sprite_index = argument3}     //위 왼쪽
if(direction>135+22.5 && direction<=180+22.5) and sprite_index!=argument4
{sprite_index = argument4}       //왼쪽
if(direction>180+22.5 && direction<=225+22.5) and sprite_index!=argument5
{sprite_index = argument5}     //밑 왼쪽
if(direction>225+22.5 && direction<=270+22.5) and sprite_index!=argument6
{sprite_index = argument6}     //밑
if(direction>270+22.5 && direction<=315+22.5) and sprite_index!=argument7
{sprite_index = argument7}     //밑 오른쪽
