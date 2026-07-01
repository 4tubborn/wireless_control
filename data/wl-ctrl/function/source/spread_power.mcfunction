scoreboard players set @s[type=marker] wl-ctrl.cur_bit 1

#say aaaaaa

#tellraw @a ["tmp: ",{score:{name:"#tmp_id",objective:"wl-ctrl.id"}}]
execute as @e[type=marker,tag=!wl-ctrl.source] if score @s wl-ctrl.id = #tmp_id wl-ctrl.id at @s run function wl-ctrl:consumer/power