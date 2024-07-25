execute as @e[type=marker,tag=switch_red] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=switch_blue] at @s run setblock ~ ~ ~ air

function switchingblocks:switchtick