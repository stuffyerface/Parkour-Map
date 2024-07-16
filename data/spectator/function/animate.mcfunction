execute as @e[type=minecraft:armor_stand,tag=center] at @s run tp @e[type=minecraft:armor_stand,tag=outer] ^ ^ ^90 facing entity @e[tag=center,limit=1]
execute as @e[type=minecraft:armor_stand,tag=outer] at @s run tp @s ~ ~60 ~ facing entity @e[tag=center,limit=1]
execute as @e[type=minecraft:armor_stand,tag=center] at @s run tp @s ~ ~ ~ ~1 ~