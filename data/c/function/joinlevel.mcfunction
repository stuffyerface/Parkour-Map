# Display a title
# Level x: Level Name
# Teleport to spawnpoint, cant move or anything, countdown 321, startrun

ride @s dismount
effect clear @s invisibility
effect give @s minecraft:blindness 3 1 true

$execute as @e[type=marker,tag=levelMarker] if score @s levelMarker matches $(level) run tag @s add selectedLevel
tp @s @n[type=marker,tag=levelMarker,tag=selectedLevel]

$data modify storage c:start level set value $(level)
data modify storage c:start levelName set string entity @n[tag=levelMarker,tag=selectedLevel] data.levelName
function c:helpers/title with storage c:start
$scoreboard players set @s level $(level)
function mechanics:startrun

tag @e[tag=levelMarker,tag=selectedLevel] remove selectedLevel