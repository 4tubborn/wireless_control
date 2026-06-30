advancement revoke @s only wl-ctrl:place

#say place

#execute anchored eyes run function #bs.view:at_aimed_block {run:"function wl-ctrl:place/",with:{}}

execute anchored eyes run function wl-ctrl:util/at_aimed_block/init {run:"function wl-ctrl:place/"}

#tellraw @a ["a: ",{entity:"@s",nbt:"SelectedItem"}]