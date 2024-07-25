scoreboard players add _switchtick utils 1
playsound minecraft:block.note_block.basedrum ambient @a ~ ~ ~ 1 1 1

execute if score _switchtick utils matches 3 run function switchingblocks:switch
execute if score _switchtick utils matches 6 run function switchingblocks:switch
schedule function switchingblocks:switchtick 10t