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

execute as @e[type=bat,tag=spawn_tnt] at @s run summon block_display ~-0.5 ~ ~-0.5 {Tags:["tnt_pile"],Passengers:[{Tags:["tnt_pile"],id:"minecraft:block_display",block_state:{Name:"minecraft:tnt",Properties:{}},transformation:[-0.2285f,0f,-0.2651f,0.6875f,0f,0.35f,0f,-0.0625f,0.2651f,0f,-0.2285f,0.5f,0f,0f,0f,1f]},{Tags:["tnt_pile"],id:"minecraft:block_display",block_state:{Name:"minecraft:tnt",Properties:{}},transformation:[0.1796f,0f,0.0881f,0.25f,0f,0.2f,0f,-0.0625f,-0.0881f,0f,0.1796f,0.1875f,0f,0f,0f,1f]},{Tags:["tnt_pile"],id:"minecraft:block_display",block_state:{Name:"minecraft:tnt",Properties:{}},transformation:[0.2283f,0f,-0.0276f,0.5625f,0f,0.23f,0f,0f,0.0276f,0f,0.2283f,0.5f,0f,0f,0f,1f]},{Tags:["tnt_pile"],id:"minecraft:block_display",block_state:{Name:"minecraft:tnt",Properties:{}},transformation:[0.0381f,0f,-0.1243f,0.3125f,0f,0.13f,0f,0f,0.1243f,0f,0.0381f,0.6875f,0f,0f,0f,1f]},{Tags:["tnt_pile"],id:"minecraft:block_display",block_state:{Name:"minecraft:tnt",Properties:{}},transformation:[-0.1183f,0f,-0.0539f,0.6875f,0f,0.13f,0f,0f,0.0539f,0f,-0.1183f,0.375f,0f,0f,0f,1f]}]}
execute as @e[type=bat,tag=spawn_tnt] at @s run summon interaction ~ ~ ~ {Tags:["tnt_pile"]}
execute as @e[type=bat,tag=spawn_tnt] at @s run summon text_display ~ ~ ~ {billboard:"center",shadow:1b,Tags:["tnt_pile"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.55f,0f],scale:[1f,1f,1f]},text:'{"color":"red","text":"Click to Pickup TNT"}'}
kill @e[type=bat,tag=spawn_tnt]

execute as @e[type=bat,tag=kill_tnt] at @s run kill @e[tag=tnt_pile,distance=..1]

kill @e[type=bat,tag=kill_tnt]