playsound minecraft:block.note_block.banjo ambient @a ~ ~ ~ 1 1 1

execute if score _switchtick utils matches 3 at @e[type=marker,tag=switch_blue] run setblock ~ ~ ~ air
execute if score _switchtick utils matches 3 at @e[type=marker,tag=switch_red] run setblock ~ ~ ~ red_glazed_terracotta


execute if score _switchtick utils matches 6 at @e[type=marker,tag=switch_blue] run setblock ~ ~ ~ light_blue_glazed_terracotta
execute if score _switchtick utils matches 6 at @e[type=marker,tag=switch_red] run setblock ~ ~ ~ air

execute if score _switchtick utils matches 6.. run scoreboard players set _switchtick utils 0