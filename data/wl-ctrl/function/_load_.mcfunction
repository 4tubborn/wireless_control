scoreboard objectives add wl-ctrl.id dummy

scoreboard players set #2 wl-ctrl.id 2
#记录上一tick与当前tick是否激活，用于下降沿(unpower)
scoreboard objectives add wl-ctrl.las_bit dummy
scoreboard objectives add wl-ctrl.cur_bit dummy

scoreboard objectives add wl-ctrl.rule dummy
scoreboard objectives add wl-ctrl.util dummy

execute unless score #glob_id wl-ctrl.id matches 0.. run scoreboard players set #glob_id wl-ctrl.id 0

#当source被移除时，对应的target是否移除（默认为true）
execute unless score #sync_rm wl-ctrl.rule matches 0..1 run scoreboard players set #sync_rm wl-ctrl.rule 1
#是否循环检测物品栏内物品
execute unless score #tick_inv wl-ctrl.rule matches 0..1 run scoreboard players set #tick_inv wl-ctrl.rule 1
#是否循环检测物品实体
execute unless score #tick_item_entity wl-ctrl.rule matches 0..1 run scoreboard players set #tick_item_entity wl-ctrl.rule 0
#是否显示欢迎语句
execute unless score #show_welcome wl-ctrl.rule matches 0..1 run scoreboard players set #show_welcome wl-ctrl.rule 1

execute if score #show_welcome wl-ctrl.rule matches 1 run tellraw @a [{color:"gold",translate:"load.wl-ctrl.des",fallback:"The Wireless Control Datapack loaded successfully! You can run %s to config.",with:[{color:"green",translate:"load.wl-ctrl.config",fallback:"[this command]",click_event:{action:"suggest_command",command:"/function wl-ctrl:op/panel"}}]}]