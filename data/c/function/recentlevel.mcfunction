execute if entity @s[tag=!spectating] run return fail

gamemode adventure @s
tag @s remove spectating
attribute @s entity_interaction_range base set 5
attribute @s block_interaction_range base set 5

function gui:inventoryupdated
execute store result storage c:recentlevel level int 1 run scoreboard players get @s mostrecentlevel
function mechanics:joinlevelstuff with storage c:recentlevel