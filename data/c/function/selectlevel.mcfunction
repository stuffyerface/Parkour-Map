tp @s 0 206 0
summon item_display 0 206 0 {Tags:["new","levelSelector"]}
ride @s mount @n[type=item_display,tag=levelSelector,tag=new]
tag @e[type=marker,tag=item_display,tag=new] remove new
tag @s add selectingLevel
effect give @s invisibility infinite 0 true
effect give @s minecraft:blindness 2 1 true