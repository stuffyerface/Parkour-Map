gamemode spectator @s
attribute @s entity_interaction_range base set -1
attribute @s block_interaction_range base set -1
effect clear @s
effect give @s minecraft:saturation infinite 0 true
effect give @s minecraft:resistance infinite 10 true
effect give @s minecraft:night_vision infinite 0 true
attribute @s minecraft:fall_damage_multiplier base set 0
scoreboard players set @s inventoryState 0
scoreboard players set @s level -1
execute if entity @s[tag=inRun] run function c:quitlevel
tag @s remove dontUpdateInventory
function gui:inventoryupdated

tp @s 0 208 0 0 0
title @s times 1 70 10
title @s title "Welcome to 50 shades of parkour!"
title @s subtitle "by Stuffy, Tado, Flippyr"
team join noCollide @s

clear @s
scoreboard players set @s leave 0
