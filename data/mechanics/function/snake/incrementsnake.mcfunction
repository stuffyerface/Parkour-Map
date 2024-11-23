execute store result storage mechanics:snake/incrementsnake head int 1 run scoreboard players get @s snakeHead
execute store result storage mechanics:snake/incrementsnake id int 1 run scoreboard players get @s snakeID

# grow the part with the same snake id and is the head
scoreboard players operation _currsnakeHead variables = @s snakeHead
scoreboard players operation _currsnakeTail variables = @s snakeTail
scoreboard players operation _currsnakeId variables = @s snakeID
execute as @e[type=block_display,tag=snake_block] if score @s snakeID = _currsnakeId variables if score @s snake = _currsnakeHead variables run function mechanics:snake/growpart
execute as @e[type=block_display,tag=snake_block] if score @s snakeID = _currsnakeId variables if score @s snake = _currsnakeTail variables run function mechanics:snake/shrinkpart

function mechanics:snake/helper/nextheadtail with storage mechanics:snake/incrementsnake