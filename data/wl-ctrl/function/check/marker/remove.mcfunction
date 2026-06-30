execute as @e[type=marker,tag=wl-ctrl.marker] at @s \
unless block ~ ~ ~ #wl-ctrl:power_sources unless block ~ ~ ~ #wl-ctrl:redstone_consumers run function wl-ctrl:check/marker/remove_