execute as @e[type=tnt] run scoreboard players add @s age 1

execute as @e[type=tnt,scores={age=20..}] run particle explosion ~ ~ ~ ~ ~ ~ 0 1
execute as @e[type=tnt,scores={age=20..}] at @s run playsound entity.generic.explode ambient @a ~ ~ ~ .6 1 1
execute as @e[type=tnt,scores={age=20..}] at @s run execute as @e[type=marker,tag=breakable_wall,distance=..4] at @s run function mechanics:wallbreak
execute as @e[type=tnt,scores={age=20..}] at @s run particle explosion ~ ~.5 ~ 1 1 1 1 3 normal



execute as @e[type=tnt,scores={age=20..}] run kill @s

execute as @e[type=text_display,tag=breakable_wall_countdown] run function mechanics:broken_walls