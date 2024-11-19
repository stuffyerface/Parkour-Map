execute if entity @s[tag=shrunk] run return 0

tag @s add shrunk
attribute @s minecraft:scale base set 0.5
playsound minecraft:block.chorus_flower.grow block @s ~ ~ ~ 1 0.3