advancement revoke @s only wl-ctrl:unlink

item modify entity @s weapon.offhand wl-ctrl:unlink
#如果是remote_control就把custom_data再补上
execute if items entity @s weapon.offhand recovery_compass run \
item modify entity @s weapon.offhand {function:"set_custom_data",tag:{"wid":"wl-ctrl:remote_control"}}