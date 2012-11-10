// 유닛이 룸밖으로 나가면 룸안으로 들어오기

if (x < sprite_xoffset) { x = sprite_xoffset } 
if (x > room_width - sprite_width + sprite_xoffset) { x = room_width - sprite_width + sprite_xoffset } 
if (y < sprite_yoffset) { y = sprite_yoffset } 
if (y > room_height - sprite_height + sprite_xoffset) { y = room_height - sprite_height + sprite_xoffset }
