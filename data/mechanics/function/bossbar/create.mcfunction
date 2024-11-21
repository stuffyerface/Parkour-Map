$bossbar add height_$(id) {"selector":"@s"}
$bossbar set height_$(id) players @s
scoreboard players operation _currentLevel variables = @s level
execute as @e[type=marker,tag=levelMarker] if score @s levelMarker = _currentLevel variables run execute store result storage mechanics:bossbar minY int 1 run data get entity @s Pos[1] 10
execute as @e[type=marker,tag=endPlate] if score @s level = _currentLevel variables run execute store result storage mechanics:bossbar maxY int 1 run data get entity @s Pos[1] 10
function mechanics:bossbar/getlevelheight with storage mechanics:bossbar
execute store result storage mechanics:bossbar maxHeight int 1 run scoreboard players get _subt1 variables 
$data modify storage mechanics:bossbar id set value $(id)
function mechanics:bossbar/setheight with storage mechanics:bossbar