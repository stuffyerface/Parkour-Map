execute store result storage mechanics:finish level int 1 run scoreboard players get @s level
execute store result storage mechanics:finish time_ms int 1 run scoreboard players get @s currentRunMilliseconds
execute store result storage mechanics:finish time_s int 1 run scoreboard players get @s currentRunSeconds
execute store result storage mechanics:finish time_m int 1 run scoreboard players get @s currentRunMinutes
data modify storage mechanics:finish msPadding set value ""
execute if score @s currentRunMilliseconds matches ..5 run data modify storage mechanics:finish msPadding set value "0"
data modify storage mechanics:finish sPadding set value ""
execute if score @s currentRunSeconds matches ..9 run data modify storage mechanics:finish sPadding set value "0"
function mechanics:helper/actionbar with storage mechanics:finish
tag @s remove inRun
scoreboard players set @s currentRunMilliseconds 0
scoreboard players set @s currentRunSeconds 0
scoreboard players set @s currentRunMinutes 0

execute store result storage mechanics:bossbar/remove id.value int 1 run scoreboard players get @s playerID 
function mechanics:bossbar/remove with storage mechanics:bossbar/remove id

scoreboard players reset @s level