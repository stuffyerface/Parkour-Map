scoreboard players remove @s countdown_ms 5
execute as @s[scores={countdown_ms=..-5}] run scoreboard players remove @s countdown_s 1
execute as @s[scores={countdown_ms=..-5}] run scoreboard players set @s countdown_ms 95

data modify storage mechanics:update_countdown input set value {"timer_s":0,"timer_ms":0,"color":"dark_gray"}
execute if score @s countdown_s matches 2..3 run data modify storage mechanics:update_countdown input set value {"timer_s":0,"timer_ms":0,"color":"gray"}
execute if score @s countdown_s matches 1..2 run data modify storage mechanics:update_countdown input set value {"timer_s":0,"timer_ms":0,"color":"white"}
execute if score @s countdown_s matches 0..1 run data modify storage mechanics:update_countdown input set value {"timer_s":0,"timer_ms":0,"color":"gold"}
execute if score @s countdown_s matches ..0 run data modify storage mechanics:update_countdown input set value {"timer_s":0,"timer_ms":0,"color":"red"}
execute store result storage mechanics:update_countdown input.timer_s int 1 run scoreboard players get @s countdown_s
execute store result storage mechanics:update_countdown input.timer_ms int 1 run scoreboard players get @s countdown_ms

function mechanics:update_countdown with storage mechanics:update_countdown input


execute if score @s countdown_s matches ..0 if score @s countdown_ms matches ..0 at @s run setblock ~ ~ ~ cracked_stone_bricks
execute if score @s countdown_s matches ..0 if score @s countdown_ms matches ..0 run kill @s
