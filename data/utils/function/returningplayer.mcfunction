gamemode spectator @s
effect clear @s
effect give @s minecraft:saturation infinite 0 true
effect give @s minecraft:resistance infinite 10 true
attribute @s minecraft:fall_damage_multiplier base set 0
scoreboard players set @s inventoryState 0
scoreboard players set @s level -1
function gui:inventoryupdated
tp @s 0 208 0 0 0
title @s times 1 70 10
title @s title "Welcome to 50 shades of parkour!"
title @s subtitle "by Stuffy, Tado, Flippyr"
team join noCollide @s

clear @s
scoreboard players set @s leave 0
