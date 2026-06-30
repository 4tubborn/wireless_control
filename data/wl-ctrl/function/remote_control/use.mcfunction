advancement revoke @s only wl-ctrl:remote_control/use

execute store result score #tmp_id wl-ctrl.id run data get entity @s SelectedItem.components."minecraft:custom_data".wl-ctrl.id

scoreboard players add @s wl-ctrl.id 1

scoreboard players operation #tmp_p wl-ctrl.id = @s wl-ctrl.id
scoreboard players operation #tmp_p wl-ctrl.id %= #2 wl-ctrl.id

tellraw @a ["score: ",{score:{name:"#tmp_p",objective:"wl-ctrl.id"}}]

scoreboard players operation @s wl-ctrl.las_bit = @s wl-ctrl.cur_bit

execute if score #tmp_p wl-ctrl.id matches 1 run function wl-ctrl:source/spread_power
execute if score #tmp_p wl-ctrl.id matches 0 run function wl-ctrl:source/spread_unpower

schedule function wl-ctrl:remote_control/check 1t replace