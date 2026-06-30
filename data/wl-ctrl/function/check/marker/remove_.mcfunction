#当source被移除掉时通知consumer
execute if score #sync_rm wl-ctrl.rule matches 1 as @s[tag=wl-ctrl.source] run function wl-ctrl:source/spread_remove
#source或consumer移除
kill @s