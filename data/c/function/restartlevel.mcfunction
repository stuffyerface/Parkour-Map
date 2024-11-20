scoreboard players operation _selectedLevel variables = @s level
execute as @e[type=marker,tag=levelMarker] if score _selectedLevel variables = @s levelMarker run tag @s add selectedLevel
tp @s @n[type=marker,tag=levelMarker,tag=selectedLevel]
tag @e[type=marker,tag=levelMarker,tag=selectedLevel] remove selectedLevel

scoreboard players set @s currentRunMilliseconds -5
scoreboard players set @s currentRunMinutes 0
scoreboard players set @s currentRunSeconds 0
