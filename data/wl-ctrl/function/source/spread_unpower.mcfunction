scoreboard players set @s[type=marker] wl-ctrl.cur_bit 0

execute unless score @s[type=marker] wl-ctrl.las_bit matches 1 run return fail
#对于方块，只有las_bit==1&&cur_bit==0时才触发；对于玩家手持remote_control触发始终执行
execute as @e[type=marker,tag=!wl-ctrl.source] if score @s wl-ctrl.id = #tmp_id wl-ctrl.id at @s run function wl-ctrl:consumer/unpower