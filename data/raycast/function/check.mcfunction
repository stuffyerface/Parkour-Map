particle dripping_lava ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:block_display,tag=levelHighlight] run data merge entity @s {Glowing:0b,block_state:{Name:"minecraft:air"}}
execute at @e[type=interaction,tag=levelHighlight,distance=..10,sort=furthest] run return run function raycast:found
scoreboard players remove @s range 1
execute if score @s range matches 1.. positioned ^ ^ ^0.5 run function raycast:check