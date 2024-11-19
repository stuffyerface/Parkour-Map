execute store result storage mechanics:finish level int 1 run scoreboard players get @s level
execute store result storage mechanics:finish time_ms int 1 run scoreboard players get @s currentRunMilliseconds
execute store result storage mechanics:finish time_s int 1 run scoreboard players get @s currentRunSeconds
execute store result storage mechanics:finish time_m int 1 run scoreboard players get @s currentRunMinutes
data modify storage mechanics:finish msPadding set value ""
execute if score @s currentRunMilliseconds matches ..5 run data modify storage mechanics:finish msPadding set value "0"
data modify storage mechanics:finish sPadding set value ""
execute if score @s currentRunSeconds matches ..9 run data modify storage mechanics:finish sPadding set value "0"
function mechanics:helper/actionbar with storage mechanics:finish

function mechanics:exitlevel