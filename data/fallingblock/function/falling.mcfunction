scoreboard players add @s age 1

execute if score @s age matches 3 run setblock ~ ~ ~ air
execute if score @s age matches 3 run playsound block.scaffolding.fall ambient @a ~ ~ ~ .8 .2 0
execute if score @s age matches 3 run summon armor_stand ~ ~-.5 ~ {NoGravity:0b,Invulnerable:1b,Invisible:1b,Tags:["falling_block_visual"],Passengers:[{id:"minecraft:block_display",Tags:["falling_block_visual"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,-2f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:yellow_glazed_terracotta"}}]}
execute if score @s age matches 100 run setblock ~ ~ ~ yellow_glazed_terracotta
execute if score @s age matches 100.. run tag @s remove stepped_on
execute if score @s age matches 100.. run scoreboard players reset @s age

