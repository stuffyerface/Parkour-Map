tag @s add dontUpdateInventory
tag @s add hasTnt
item replace entity @s hotbar.4 with tnt[max_stack_size=1,custom_name='{"color":"red","italic": false,"text": "Magical TNT"}',lore=['{"color": "gray","italic": false, "text": "Place on a Redstone Block to"}','{"color": "gray","italic": false, "text": "temporarily break Cracked"}','{"color": "gray","italic": false, "text": "Stone Bricks"}'],minecraft:can_place_on={predicates:[{blocks:"redstone_block"}],show_in_tooltip:false}] 1
tag @s remove dontUpdateInventory