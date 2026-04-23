execute if entity @s[gamemode=!adventure] run return fail
execute if entity @s[tag=!inRun] run return fail
tag @s add dontUpdateInventory
tag @s add hasTnt
execute at @s run playsound minecraft:entity.item.pickup ambient @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.item.pickup ambient @s ~ ~ ~ 1 1
function mechanics:tnt/givetnt
tag @s remove dontUpdateInventory