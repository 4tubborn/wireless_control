advancement revoke @s only wl-ctrl:unlink

item modify entity @s weapon.offhand wl-ctrl:unlink
#如果是remote_control就把custom_data再补上

title @s actionbar [{translate:"actionbar.wl-ctrl.unlinked",fallback:"Unlinked items"}]