effect clear @s invisibility
effect give @s minecraft:blindness 2 0 true
tag @s add startCountdown

$execute as @e[type=marker,tag=levelMarker] if score @s levelMarker matches $(level) run tag @s add selectedLevel
tp @s @n[type=marker,tag=levelMarker,tag=selectedLevel]

$data modify storage c:start level set value $(level)
data modify storage c:start levelName set string entity @n[tag=levelMarker,tag=selectedLevel] data.levelName
function c:helpers/title with storage c:start
$scoreboard players set @s level $(level)

tag @e[tag=levelMarker,tag=selectedLevel] remove selectedLevel