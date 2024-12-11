tp @s 0 206 0 0.0 0.0
summon item_display 0 206 0 {Tags:["new","levelSelector"]}
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