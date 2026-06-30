summon marker ~ ~ ~ {Tags:["wl-ctrl.marker","wl-ctrl.init","wl-ctrl.source"]}

#setblock ~ ~ ~ acacia_button

function wl-ctrl:place/render

execute store result score @n[type=marker,tag=wl-ctrl.init] wl-ctrl.id run data get entity @s SelectedItem.components."minecraft:custom_data".wl-ctrl.id
tag @n[type=marker,tag=wl-ctrl.init,tag=wl-ctrl.source] remove wl-ctrl.init