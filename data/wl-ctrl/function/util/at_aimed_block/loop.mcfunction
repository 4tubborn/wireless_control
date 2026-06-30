execute if score #step wl-ctrl.util > #max_step wl-ctrl.util run return fail
execute unless block ~ ~ ~ #air align xyz run return run function wl-ctrl:util/at_aimed_block/end with storage wl-ctrl util.at_aimed_block
scoreboard players add #step wl-ctrl.util 1
execute positioned ^ ^ ^0.0625 run function wl-ctrl:util/at_aimed_block/loop