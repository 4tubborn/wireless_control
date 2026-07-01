#这个score实际只有带wl-ctrl.tick的tag的实体会用到
scoreboard players set @s wl-ctrl.cur_bit 1

function #bs.block:get_block
function #bs.block:replace_properties {properties:[{name:"powered",value:"true"}]}
function #bs.block:replace_properties {properties:[{name:"power",value:"15"}]}
function #bs.block:replace_properties {properties:[{name:"triggered",value:"true"}]}
function #bs.block:replace_properties {properties:[{name:"lit",value:"true"}]}

# Setup the input
data modify storage bs:in block.fill_block.block set from storage bs:out block.block

#tellraw @a ["block: ",{storage:"bs:out",nbt:"block.block"}]

data modify storage bs:in block.fill_block merge value {from:"~ ~ ~",to:"~ ~ ~"}
function #bs.block:fill_block