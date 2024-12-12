scoreboard players set _levelscomplete variables 0
scoreboard players set _beatenlevels variables 0

execute as @e[type=marker,tag=levelMarker,tag=completed] run scoreboard players add _levelscomplete variables 1
execute as @e[type=marker,tag=levelMarker,tag=beaten] run scoreboard players add _beatenlevels variables 1

execute store result storage sidebar:levels completed int 1 run scoreboard players get _levelscomplete variables
execute store result storage sidebar:levels beaten int 1 run scoreboard players get _beatenlevels variables

function sidebar:updatelvlhelper with storage sidebar:levels