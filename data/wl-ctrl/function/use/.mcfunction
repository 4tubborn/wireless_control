execute unless block ~ ~ ~ #wl-ctrl:redstone_consumers run return fail
execute as @n[type=marker,tag=wl-ctrl.marker,distance=..0.4] if score @s wl-ctrl.id = #glob_id wl-ctrl.id run return fail

#execute if entity @e[type=marker,distance=..0.4,tag=wl-ctrl.marker] run say have marker

#say use

function wl-ctrl:use/render
playsound minecraft:entity.experience_orb.pickup
execute unless items entity @s weapon.mainhand *[custom_data~{wl-ctrl:{}}] run function wl-ctrl:use/item
title @s actionbar {"translate":"wl-ctrl.actionbar.linked","fallback": "Linked to the block"}

summon marker ~ ~ ~ {Tags:["wl-ctrl.marker","wl-ctrl.init"]}
scoreboard players operation @n[type=marker,distance=..0.1,tag=wl-ctrl.init] wl-ctrl.id = #glob_id wl-ctrl.id
tag @n[type=marker,tag=!wl-ctrl.source,tag=wl-ctrl.init] remove wl-ctrl.init