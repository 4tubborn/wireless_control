function #bs.block:get_block
function #bs.block:replace_properties {properties:[{name:"powered",value:"false"}]}
function #bs.block:replace_properties {properties:[{name:"power",value:"0"}]}
function #bs.block:replace_properties {properties:[{name:"triggered",value:"false"}]}
function #bs.block:replace_properties {properties:[{name:"lit",value:"false"}]}

# Setup the input
data modify storage bs:in block.fill_block.block set from storage bs:out block.block

#tellraw @a ["block: ",{storage:"bs:out",nbt:"block.block"}]

data modify storage bs:in block.fill_block merge value {from:"~ ~ ~",to:"~ ~ ~"}
function #bs.block:fill_block