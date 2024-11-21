scoreboard players operation _currentLevel variables = @s level
execute as @e[type=marker,tag=levelMarker] if score @s levelMarker = _currentLevel variables run execute store result storage mechanics:bossbar minY int 1 run data get entity @s Pos[1] 10
execute store result storage mechanics:bossbar maxY int 1 run data get entity @s Pos[1] 10
function mechanics:bossbar/getlevelheight with storage mechanics:bossbar
execute if score _subt1 variables matches ..0 run scoreboard players set _subt1 variables 0
execute store result storage mechanics:bossbar bossbarProgress int 1 run scoreboard players get _subt1 variables
function mechanics:bossbar/setprogress with storage mechanics:bossbar