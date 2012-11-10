//룸 못나가게

if 0>=bbox_left{x=x-bbox_left+2}
if 0>=bbox_top{y=y-bbox_top+2}
if bbox_right>=room_width{x=room_width+(x-bbox_right)-2}
if bbox_bottom>=room_height{y=room_height+(y-bbox_bottom)-2}

// room_block()
