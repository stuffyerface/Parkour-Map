tag @s add inRun
scoreboard players set @s currentRunMilliseconds 0
scoreboard players set @s currentRunSeconds 0
scoreboard players set @s currentRunMinutes 0

execute store result storage mechanics:bossbar/create id.value int 1 run scoreboard players get @s playerID 
function mechanics:bossbar/create with storage mechanics:bossbar/create id