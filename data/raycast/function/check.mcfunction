execute as @e[type=minecraft:block_display,tag=levelHighlight] run data merge entity @s {Glowing:0b,view_range:0}
execute at @e[type=interaction,tag=levelHighlight,distance=..10,sort=furthest] run return run function raycast:found
scoreboard players remove @s range 8
execute if score @s range matches 1.. positioned ^ ^ ^4 run function raycast:check
execute if score @s range matches 0 run title @s actionbar {"text": "Hover to highlight a level"}