scoreboard players add @s age 1

execute if score @s age matches ..5 run return 0
scoreboard players reset @s age
setblock ~ ~ ~ barrier