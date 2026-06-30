#input: run:<string>
$data modify storage wl-ctrl util.at_aimed_block.run set value "$(run)"

execute store result score #max_step wl-ctrl.util run attribute @s block_interaction_range get 16
scoreboard players set #step wl-ctrl.util 0

function wl-ctrl:util/at_aimed_block/loop