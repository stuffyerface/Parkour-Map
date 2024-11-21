#activated on a win or a loss
tag @s add spectating
attribute @s entity_interaction_range base set -1
attribute @s block_interaction_range base set -1
gamemode spectator @s
gamemode creative @s
effect give @s invisibility infinite 0 true

tag @s remove inRun
scoreboard players set @s currentRunMilliseconds 0
scoreboard players set @s currentRunSeconds 0
scoreboard players set @s currentRunMinutes 0

execute store result storage mechanics:bossbar/remove id.id int 1 run scoreboard players get @s playerID 
function mechanics:bossbar/remove with storage mechanics:bossbar/remove id

execute if score @s level matches 44 run schedule function mechanics:switchingblocks/attemptstop 1t

scoreboard players reset @s level

tag @s remove hasTnt

function gui:inventoryupdated