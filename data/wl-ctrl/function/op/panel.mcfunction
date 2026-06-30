tellraw @s [\
    {text:""},\
    {color:yellow,translate:"Kill Markers:\n%s, %s, %s\n",hover_event:{action:"show_text",value:"At every time players link blocks or place linked blocks, markers will be created at the position of the blocks. You can manually execute the commands when the pack does not remove them in time"},with:[\
        {color:green,translate:"[Kill All]",click_event:{action:"run_command",command:"/function wl-ctrl:op/kill/all"},hover_event:{action:"show_text",value:""}},\
        {color:green,translate:"[Kill Sources]",click_event:{action:"run_command",command:"/function wl-ctrl:op/kill/source"},hover_event:{action:"show_text",value:""}},\
        {color:green,translate:"[Kill Consumers]",click_event:{action:"run_command",command:"/function wl-ctrl:op/kill/consumer"},hover_event:{action:"show_text",value:""}},\
    ],},\
    {color:yellow,translate:"Set Rules:\n%s, %s, %s, %s, %s",with:[\
        {color:green,translate:"[Reset All]",click_event:{action:"run_command",command:"/function wl-ctrl:op/rule/reset"}},\
        {color:green,translate:"[Show Welcome]<Boolean>",\
            click_event:{action:"suggest_command",command:"/scoreboard players set #show_welcome wl-ctrl.rule "},\
            hover_event:{action:"show_text",value:"Whether show welcome sentences when (re)loading packs"}},\
        {color:green,translate:"[Sync Removal]<Boolean>",\
            click_event:{action:"suggest_command",command:"/scoreboard players set #sync_rm wl-ctrl.rule "},\
            hover_event:{action:"show_text",value:"Whether remove linked consumer markers when removing source markers"}},\
        {color:green,translate:"[Check Inventory]<Boolean>",\
            click_event:{action:"suggest_command",command:"/scoreboard players set #tick_inv wl-ctrl.rule "},\
            hover_event:{action:"show_text",value:"Whether check players' inventories have incorrect state items"}},\
        {color:green,translate:"[Check Item Entity]<Boolean>",\
            click_event:{action:"suggest_command",command:"/scoreboard players set #tick_item_entity wl-ctrl.rule "},\
            hover_event:{action:"show_text",value:"Whether check item entities contain incorrect state items"}},\
    ],},\
]