execute as @e[type=marker,tag=switch_red] at @s run setblock ~ ~ ~ air strict
execute as @e[type=marker,tag=switch_blue] at @s run setblock ~ ~ ~ light_blue_glazed_terracotta strict

function mechanics:switchingblocks/switchtick