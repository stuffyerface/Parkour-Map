execute as @e[type=marker,tag=levelMarker,tag=completed] run tag @s remove completed
execute as @e[type=marker,tag=levelMarker,tag=beaten] run tag @s remove beaten
scoreboard players set _totaljumps variables 0
function sidebar:updatelevels
function sidebar:updatejumps {jumps: 0}