execute as @e[type=bat,tag=breakable_wall] at @s run summon marker ~ ~ ~ {Tags:["breakable_wall","new"]}
execute as @e[type=marker,tag=new,tag=breakable_wall] at @s run setblock ~ ~ ~ cracked_stone_bricks replace
execute as @e[type=marker,tag=new,tag=breakable_wall] run tag @s remove new

kill @e[type=bat,tag=breakable_wall]

execute as @e[type=bat,tag=snake_block] at @s run summon block_display ~ ~.5 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.1f,-.1f,-.1f],scale:[.2f,.2f,.2f]},block_state:{Name:"minecraft:orange_concrete"},Tags:["snake_block","new"]}
execute as @e[type=block_display,tag=new,tag=snake_block] at @s run scoreboard players set @s snake 1
execute as @e[type=block_display,tag=new,tag=snake_block] at @s run scoreboard players add @e[type=block_display,tag=snake_block] snake 1
execute as @e[type=block_display,tag=new,tag=snake_block] at @s run tag @s remove new

kill @e[type=bat,tag=snake_block]

execute as @e[type=bat,tag=switch_blue] at @s run summon marker ~ ~ ~ {Tags:["switch_blue"]}
execute as @e[type=bat,tag=switch_red] at @s run summon marker ~ ~ ~ {Tags:["switch_red"]}

kill @e[type=bat,tag=switch_red]
kill @e[type=bat,tag=switch_blue]

execute as @e[type=bat,tag=falling_block] at @s run summon marker ~ ~ ~ {Tags:["falling_block"]}
execute as @e[type=bat,tag=falling_block] at @s run setblock ~ ~ ~ yellow_glazed_terracotta

kill @e[type=bat,tag=falling_block]