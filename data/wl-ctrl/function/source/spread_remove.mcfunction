#say remove
#当source方块被移除时触发
scoreboard players operation #tmp_id wl-ctrl.id = @s wl-ctrl.id
execute as @e[type=marker,tag=!wl-ctrl.source] if score @s wl-ctrl.id = #tmp_id wl-ctrl.id at @s run function wl-ctrl:consumer/remove