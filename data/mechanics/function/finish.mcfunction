execute if score @s level matches -1 run return run say "Whats wrong wit u" 

execute store result storage mechanics:finish level int 1 run scoreboard players get @s level
execute store result storage mechanics:finish time_ms int 1 run scoreboard players get @s currentRunMilliseconds
execute store result storage mechanics:finish time_s int 1 run scoreboard players get @s currentRunSeconds
execute store result storage mechanics:finish time_m int 1 run scoreboard players get @s currentRunMinutes

data modify storage mechanics:finish ms_padding set value ""
execute if score @s currentRunMilliseconds matches ..5 run data modify storage mechanics:finish ms_padding set value "0"
data modify storage mechanics:finish s_padding set value ""
execute if score @s currentRunSeconds matches ..9 run data modify storage mechanics:finish s_padding set value "0"

function mechanics:finished with storage mechanics:finish
advancement revoke @s only mechanics:pressureplate

function mechanics:exitlevel