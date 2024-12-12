execute store result storage mechanics:finish level int 1 run scoreboard players get @s level
execute store result storage mechanics:finish time_ms int 1 run scoreboard players get @s currentRunMilliseconds
execute store result storage mechanics:finish time_s int 1 run scoreboard players get @s currentRunSeconds
execute store result storage mechanics:finish time_m int 1 run scoreboard players get @s currentRunMinutes
execute store result storage mechanics:finish time_total int 1 run scoreboard players get @s currentRunTotalMillis

data modify storage mechanics:finish ms_padding set value ""
execute if score @s currentRunMilliseconds matches ..5 run data modify storage mechanics:finish ms_padding set value "0"
data modify storage mechanics:finish s_padding set value ""
execute if score @s currentRunSeconds matches ..9 run data modify storage mechanics:finish s_padding set value "0"

summon firework_rocket ~ ~1.6 ~ {Life:1,LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[I;11992845,938496],fade_colors:[I;1374207,1118622]}]}}}}

function mechanics:finished with storage mechanics:finish
advancement revoke @s only mechanics:pressureplate

function mechanics:exitlevel
function sidebar:updatelevels