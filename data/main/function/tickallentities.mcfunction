execute as @s[type=item] run kill @s
execute as @s[type=tnt] run function mechanics:tnt
execute as @s[type=marker,tag=stepped_on] run function fallingblock:falling
execute as @s[type=armor_stand,tag=falling_block_visual] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_on_ground":true}}} run scoreboard players add @s age 1
execute as @s[type=armor_stand,tag=falling_block_visual] at @s if score @s age matches 6.. run function fallingblock:killfallen
