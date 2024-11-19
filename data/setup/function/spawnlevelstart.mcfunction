# to spawn a level start, /function setup:spawnlevelstart {level: 1, levelName: "levelName"}
$execute as @e[type=marker,tag=levelMarker,scores={levelMarker=$(level)}] run tellraw @a "Sorry, there is already a marker in use for level $(level)."
$execute as @e[type=marker,tag=levelMarker,scores={levelMarker=$(level)}] run return 1

$summon marker ~ ~ ~ {Tags:["levelMarker","new"], data: {level: $(level), levelName: "$(levelName)"}}
$execute as @e[type=marker,tag=levelMarker,tag=new] run scoreboard players set @s levelMarker $(level)
schedule function setup:fixrotation 1t
execute as @e[type=marker,tag=levelMarker,tag=new] run tag @s remove new