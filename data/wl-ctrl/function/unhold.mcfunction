advancement revoke @s only wl-ctrl:hold

item modify entity @s weapon.mainhand wl-ctrl:unhold

function wl-ctrl:check/item/inv

#tellraw @a ["cur: ",{score:{name:"#glob_id",objective:"wl-ctrl.id"}}]

scoreboard players add #glob_id wl-ctrl.id 1