scoreboard players set @s wl-ctrl.cur_bit 0

execute unless score @s wl-ctrl.las_bit matches 1 run return fail
#只有las_bit==1&&cur_bit==0时才触发
execute as @e[type=marker,tag=!wl-ctrl.source] if score @s wl-ctrl.id = #tmp_id wl-ctrl.id at @s run function wl-ctrl:consumer/unpower