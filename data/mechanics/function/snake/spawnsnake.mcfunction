# Set current snake's block with /data modify storage mechanics:snake block set value "stone"
# Set current snake's id with /data modify storage mechanics:snake snakeid set value 0

$execute unless score _snake$(snakeid)nextID variables matches 0.. run scoreboard players set _snake$(snakeid)nextID variables 0
$summon block_display ~ ~.5 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.1f,-.1f,-.1f],scale:[.2f,.2f,.2f]},block_state:{Name:"minecraft:$(block)"},Tags:["snake_block","new"]}
$execute as @e[type=block_display,tag=new,tag=snake_block] at @s run scoreboard players operation @s snake = _snake$(snakeid)nextID variables
$scoreboard players add _snake$(snakeid)nextID variables 1
$execute as @e[type=block_display,tag=new,tag=snake_block] at @s run scoreboard players set @s snakeID $(snakeid)
execute as @e[type=block_display,tag=new,tag=snake_block] at @s run tag @s remove new