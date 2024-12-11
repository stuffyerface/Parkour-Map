scoreboard players add @s currentRunMilliseconds 5
scoreboard players add @s currentRunTotalMillis 5
execute if score @s currentRunMilliseconds matches 100.. run scoreboard players add @s currentRunSeconds 1
execute if score @s currentRunMilliseconds matches 100.. run scoreboard players set @s currentRunMilliseconds 0


execute if score @s currentRunSeconds matches 60.. run scoreboard players add @s currentRunMinutes 1
execute if score @s currentRunSeconds matches 60.. run scoreboard players set @s currentRunSeconds 0

data modify storage mechanics:rendertimer runTime set value {"M":0,"S":0,"MS":0}
execute store result storage mechanics:rendertimer runTime.M int 1 run scoreboard players get @s currentRunMinutes
execute store result storage mechanics:rendertimer runTime.S int 1 run scoreboard players get @s currentRunSeconds
execute store result storage mechanics:rendertimer runTime.MS int 1 run scoreboard players get @s currentRunMilliseconds

function mechanics:rendertimer with storage mechanics:rendertimer runTime