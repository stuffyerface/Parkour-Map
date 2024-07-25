#particle cloud ~ ~ ~ 0 0 0 0 1
data merge entity @e[type=minecraft:block_display,limit=1] {Glowing:0b}
execute as @e[type=interaction,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[type=interaction,dx=0] run function raycast:found
scoreboard players remove @s range 1
execute if score @s range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function raycast:check