execute if score @s level matches -1 run return run say "Whats wrong wit u" 

execute store result storage mechanics:finish level int 1 run scoreboard players get @s level
execute store result storage mechanics:finish time_ms int 1 run scoreboard players get @s currentRunMilliseconds
execute store result storage mechanics:finish time_s int 1 run scoreboard players get @s currentRunSeconds
execute store result storage mechanics:finish time_m int 1 run scoreboard players get @s currentRunMinutes
function mechanics:finished with storage mechanics:finish
tag @s remove inRun
scoreboard players set @s currentRunMilliseconds 0
scoreboard players set @s currentRunSeconds 0
scoreboard players set @s currentRunMinutes 0

execute store result storage mechanics:bossbar/remove id.value int 1 run scoreboard players get @s playerID 
function mechanics:bossbar/remove with storage mechanics:bossbar/remove id