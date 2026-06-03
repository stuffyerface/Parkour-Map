tp @s 3 184 1 0.0 0.0
summon item_display 3 184 1 {Tags:["new","levelSelector"]}
summon text_display 3 300 1 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[32f,32f,32f]},text:"🡫",teleport_duration:4,Tags:["levelHighlightArrow"],billboard:"vertical",view_range:4,background:1}
execute as @e[type=interaction,tag=levelHighlight] run data merge entity @s {width:21}
ride @s mount @n[type=item_display,tag=levelSelector,tag=new]
tag @e[type=item_display,tag=levelSelector,tag=new] remove new
tag @s remove spectating
tag @s add selectingLevel
effect give @s invisibility infinite 0 true
effect give @s minecraft:blindness 1 0 true

attribute @s entity_interaction_range base set 5
attribute @s block_interaction_range base set 5

gamemode adventure @s
function gui:inventoryupdated