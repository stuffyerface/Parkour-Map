execute as @s[type=item] run kill @s
execute as @s[type=tnt] run function mechanics:tnt/tnt
execute as @s[type=marker,tag=stepped_on,tag=falling_block] run function mechanics:fallingblock/falling
execute as @s[type=armor_stand,tag=falling_block_visual] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_on_ground":true}}} run scoreboard players add @s age 1
execute as @s[type=armor_stand,tag=falling_block_visual] at @s if score @s age matches 6.. run function mechanics:fallingblock/killfallen
execute as @s[type=minecraft:interaction,tag=tnt_pile] if data entity @s interaction on target run function mechanics:tnt/pickup_tnt
execute as @s[type=minecraft:interaction,tag=levelSelector] if data entity @s interaction on target run function mechanics:selectedlevel
execute as @s[type=minecraft:interaction] run data remove entity @s interaction
execute as @s[type=item_display,tag=levelSelector] run function raycast:killlonely
execute as @s[type=arrow] run function mechanics:arrow/arrowlifespan
execute as @s[type=marker,tag=stepped_on,tag=appearingBlock] run function mechanics:appearing/shownext
execute as @s[type=marker,tag=shown,tag=appearingBlock] run function mechanics:appearing/shownblock
execute unless score _laserstate variables matches -1 as @s[type=block_display,tag=laser] run function mechanics:laser/handle