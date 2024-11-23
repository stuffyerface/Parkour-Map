execute as @e[type=block_display,tag=snake_block] at @s if score @s snake matches 0 run function mechanics:snake/incrementsnake
schedule function mechanics:snake/snaketick 10t