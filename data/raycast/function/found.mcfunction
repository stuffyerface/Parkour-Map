execute as @n[type=interaction,tag=levelHighlight] store result storage raycast:found level int 1 run scoreboard players get @s level 
execute positioned ~-10 ~ ~-10 as @n[type=minecraft:block_display,tag=levelHighlight] run function raycast:highlightme with storage raycast:found
function raycast:actionbar with storage raycast:found

execute as @s[tag=!selectedLevel] run return 1
tag @s remove selectedLevel
tag @s remove selectingLevel
#selected level
function c:joinlevel with storage raycast:found
execute as @e[type=minecraft:block_display,tag=levelHighlight] run data merge entity @s {Glowing:0b,block_state:{Name:"minecraft:air"}}