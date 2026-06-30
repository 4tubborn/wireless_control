
#tellraw @a ["score: ",{score:{name:"@e[type=marker]",objective:"wl-ctrl.id"}}]
#execute as @e[type=marker,tag=wl-ctrl.source] run say mar

execute as @e[type=marker,tag=wl-ctrl.source] at @s run function wl-ctrl:source/tick_

execute as @e[type=marker,tag=wl-ctrl.marker] at @s run particle bubble ~0.5 ~0.3 ~0.5 0 0 0 1 10