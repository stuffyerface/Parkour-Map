scoreboard players add _switchtick utils 1
playsound minecraft:block.note_block.basedrum ambient @a ~ ~ ~ 1 1 1

execute if score _switchtick utils matches 3 run function mechanics:switchingblocks/switch
execute if score _switchtick utils matches 6 run function mechanics:switchingblocks/switch
schedule function mechanics:switchingblocks/switchtick 10t