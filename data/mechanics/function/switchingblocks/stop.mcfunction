schedule clear mechanics:switchingblocks/switchtick

execute as @e[type=marker,tag=switch_red] at @s run setblock ~ ~ ~ black_glazed_terracotta
execute as @e[type=marker,tag=switch_blue] at @s run setblock ~ ~ ~ blue_glazed_terracotta
scoreboard players set _switchtick utils -1
