advancement revoke @s only gui:delayeddummy
execute if entity @s[tag=dontUpdateInventory] run return run function gui:dontupdate
execute if score @s placeTnt matches 1.. run say placed tnt
execute if score @s placeTnt matches 1.. run return run function mechanics:place_tnt
clear @s

execute if score @s inventoryState matches 0 run item replace entity @s hotbar.8 with explorer_pottery_sherd[max_stack_size=1,custom_name='{"color":"light_purple","italic":false,"text":"Level Selector"}',lore=['{"color":"gray","italic":false,"text":"Click to go to level selection"}'],food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}] 1
execute if score @s inventoryState matches 0 run item replace entity @s hotbar.7 with shulker_shell[max_stack_size=1,custom_name='{"color":"light_purple","italic":false,"text":"Cosmetic Selector"}',lore=['{"color":"gray","italic":false,"text":"Click to go to cosmetic selection"}'],food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}] 1
execute if entity @s[tag=hasTnt] run item replace entity @s hotbar.4 with tnt[max_stack_size=1,custom_name='{"color":"red","italic": false,"text": "Magical TNT"}',lore=['{"color": "gray","italic": false, "text": "Place on a Redstone Block to"}','{"color": "gray","italic": false, "text": "temporarily break Cracked"}','{"color": "gray","italic": false, "text": "Stone Bricks"}'],minecraft:can_place_on={predicates:[{blocks:"redstone_block"}],show_in_tooltip:false}] 1

execute if score @s inventoryState matches 1 run item replace entity @s hotbar.8 with clock[max_stack_size=1,custom_name='{"color":"red","italic":false,"text":"Restart Level"}',lore=['{"color":"gray","italic":false,"text":"Click to restart current level"}'],food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}] 1

advancement revoke @s only gui:updateinventory
