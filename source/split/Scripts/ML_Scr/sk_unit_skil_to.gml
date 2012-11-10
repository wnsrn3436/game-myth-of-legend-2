var i, rel;

moni=global.units_moni[argument0]
moni_alarm=global.moni_alarm[argument0]

unit_s=global.abilitys[argument0, 0]

bullet_speed=global.abilitys[argument0, 1]

name=global.abilitys_name[argument0]

drag_ok=global.abilitys[argument0, 3]

hp=global.abilitys[argument0, 4]
max_hp=global.abilitys[argument0, 5]

move_speed=global.abilitys[argument0, 6]

attack_power=global.abilitys[argument0, 7]
attack_speed=global.abilitys[argument0, 8]
attack_alarm=global.abilitys[argument0, 9]

range=global.abilitys[argument0, 10]
attack_range=global.abilitys[argument0, 11]

attack_plus_number=global.abilitys[argument0, 12]
for(i=0; i!=attack_plus_number; i+=1)
{
    attack_plus_id[i]=global.abilitys[argument0, 13+(i*2)]
    attack_plus_power[i]=global.abilitys[argument0, 14+(i*2)]
}

rel=attack_plus_number*2

moni_go=global.abilitys[argument0, 13+rel]

skil_number=global.abilitys[argument0, 14+rel]
for(i=0; i!=skil_number; i+=1)
{
    skil_exe[i]=global.abilitys[argument0, 15+rel+(i*2)]
    skil_id[i]=global.abilitys[argument0, 16+rel+(i*2)]
}

/**/

if unit_s=0{depth=1}

if object_get_name(object_index)="obj_bil"
{
    if 100>unit_id{sprite_index=spr_w_bil_go}
    else{sprite_index=spr_s_bil_go_1}
    if (4>player and global.player_control>=4) or (player>=4 and 4>global.player_control){in_point_data_add(2, x, y, id)}
    return 0
}
if global.player_control!=player{return 0}
for(i=0; i!=global.go_number; i+=1)
{
    if unit_id=ds_list_find_value(global.go_moni, i){in_point_data_add(1, x, y, id); moni_check=1; break}
}
