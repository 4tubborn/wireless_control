scoreboard players operation @s wl-ctrl.las_bit = @s wl-ctrl.cur_bit

scoreboard players operation #tmp_id wl-ctrl.id = @s wl-ctrl.id

execute if predicate wl-ctrl:power_source_on run return run function wl-ctrl:source/spread_power
function wl-ctrl:source/spread_unpower
#execute if predicate wl-ctrl:power_source_off run function wl-ctrl:source/spread_unpower