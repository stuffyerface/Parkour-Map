execute as @e[type=block_display,tag=snake_block] at @s run scoreboard players remove @s snake 1
execute as @e[type=block_display,tag=snake_block] at @s if score @s snake matches 0 run setblock ~ ~ ~ barrier
execute as @e[type=block_display,tag=snake_block] at @s if score @s snake matches 0 run data merge entity @s {transformation:{translation:[-.5f,-.5f,-.5f],scale:[1f,1f,1f]},start_interpolation:-1,interpolation_duration:5}
execute as @e[type=block_display,tag=snake_block] at @s if score @s snake matches 22 run data merge entity @s {transformation:{translation:[-.1f,-.1f,-.1f],scale:[.2f,.2f,.2f]},start_interpolation:-1,interpolation_duration:5}
execute as @e[type=block_display,tag=snake_block] at @s if score @s snake matches 22 run setblock ~ ~ ~ air


execute as @e[type=block_display,tag=snake_block] at @s if score @s snake matches 0 run scoreboard players set @s snake 26
schedule function snake:snake 10t