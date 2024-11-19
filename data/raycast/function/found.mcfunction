execute as @n[type=interaction,tag=levelHighlight] store result storage raycast:found level int 1 run scoreboard players get @s level 
function raycast:helper/check with storage raycast:found

execute as @s[tag=!selectedLevel] run return 1
tag @s remove selectedLevel
tag @s remove selectingLevel
#selected level
function c:joinlevel with storage raycast:found
execute as @e[type=minecraft:block_display,tag=levelHighlight] run data merge entity @s {Glowing:0b,block_state:{Name:"minecraft:air"}}