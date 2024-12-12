execute if entity @s[tag=!spectating] run return fail

scoreboard players set _nextlevel variables 51

scoreboard players operation _nextlevel variables < @e[type=marker,tag=levelMarker,tag=!completed] levelMarker

execute if score _nextlevel variables matches 51 run return run tellraw @s [{"color": "red", "bold": true , "text": "UH OH!"}, {"color": "white", "bold": false,  "text": " You've already beaten every level!"}]

gamemode adventure @s
tag @s remove spectating
attribute @s entity_interaction_range base set 5
attribute @s block_interaction_range base set 5

function gui:inventoryupdated
execute store result storage c:nextlevel level int 1 run scoreboard players get _nextlevel variables
function mechanics:joinlevelstuff with storage c:nextlevel