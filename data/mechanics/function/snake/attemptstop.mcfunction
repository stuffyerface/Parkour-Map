execute if entity @a[scores={level=43}] run return fail
schedule clear mechanics:snake/snaketick
execute as @e[type=block_display,tag=snake_block] at @s run function mechanics:snake/shrinkpart
execute as @e[type=block_display,tag=snake_block] at @s if score @s snake matches 0 run scoreboard players set @s snakeHead 0
execute as @e[type=block_display,tag=snake_block] at @s if score @s snake matches 0 run scoreboard players set @s snakeTail -1