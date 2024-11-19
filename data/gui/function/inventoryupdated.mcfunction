advancement revoke @s only gui:delayeddummy
execute if entity @s[tag=dontUpdateInventory] run return run function gui:dontupdate
#execute if entity @s[gamemode=!adventure] run return run function gui:dontupdate
execute if score @s placeTnt matches 1.. run say placed tnt
execute if score @s placeTnt matches 1.. run return run function mechanics:tnt/place_tnt

# Clear All Inventory Items
clear @s

# Give items back

# Cancel Run for Players in a Run
# Level Selector for Players not in a Run
execute as @s[tag=inRun] run item replace entity @s hotbar.8 with red_concrete[max_stack_size=1,custom_name='{"color":"red","italic":false,"text":"Exit Level"}',lore=['{"color":"gray","italic":false,"text":"Click to restart current level"}'],consumable={consume_seconds:100000,animation:"none",has_consume_particles:false}] 1
# execute as @s[tag=selectingLevel] run item replace entity @s hotbar.8 with spyglass[max_stack_size=1,custom_name='{"color":"light_purple","italic":false,"text":"Spectate"}',lore=['{"color":"gray","italic":false,"text":"Click to become a spectator"}'],consumable={consume_seconds:100000,animation:"none",has_consume_particles:false}] 1
execute as @s[tag=spectating] run item replace entity @s hotbar.8 with explorer_pottery_sherd[max_stack_size=1,custom_name='{"color":"light_purple","italic":false,"text":"Level Selector"}',lore=['{"color":"gray","italic":false,"text":"Click to go to level selection"}'],consumable={consume_seconds:100000,animation:"none",has_consume_particles:false}] 1

# Level Specific Items
# lvl20 - Bow and Arrow
execute as @s[tag=inRun,scores={level=20}] run item replace entity @s hotbar.4 with bow[max_stack_size=1,custom_name='{"color":"aqua","italic":false,"text":"The Bow"}',lore=['{"color":"gray","italic":false,"text":"You should know how to use this."}'],unbreakable={unbreakable:true,show_in_tooltip:false},enchantment_glint_override=false,enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false}] 1
execute as @s[tag=inRun,scores={level=20}] run item replace entity @s hotbar.5 with arrow[max_stack_size=1,custom_name='{"color":"aqua","italic":false,"text":"The Arrow"}',lore=['{"color":"gray","italic":false,"text":"This obviously goes with the bow."}']] 1

# lvl45 - TNT (sometimes)
execute if entity @s[tag=hasTnt] run item replace entity @s hotbar.4 with tnt[max_stack_size=1,custom_name='{"color":"red","italic": false,"text": "Magical TNT"}',lore=['{"color": "gray","italic": false, "text": "Place on a Redstone Block to"}','{"color": "gray","italic": false, "text": "temporarily break Cracked"}','{"color": "gray","italic": false, "text": "Stone Bricks"}'],minecraft:can_place_on={predicates:[{blocks:"redstone_block"}],show_in_tooltip:false}] 1

# lvl46 - Shrink Guy
execute as @s[tag=inRun,scores={level=46}] run item replace entity @s hotbar.4 with shaper_armor_trim_smithing_template[max_stack_size=1,custom_name='{"color":"aqua","italic":false,"text":"Shrink Machine"}',lore=['{"color":"gray","italic":false,"text":"Click to Shrink"}']] 1


#execute if score @s inventoryState matches 0 run item replace entity @s hotbar.8 with explorer_pottery_sherd[max_stack_size=1,custom_name='{"color":"light_purple","italic":false,"text":"Level Selector"}',lore=['{"color":"gray","italic":false,"text":"Click to go to level selection"}'],food={nutrition:0,saturation:0,can_always_eat:true}] 1
#execute if score @s inventoryState matches 0 run item replace entity @s hotbar.7 with shulker_shell[max_stack_size=1,custom_name='{"color":"light_purple","italic":false,"text":"Cosmetic Selector"}',lore=['{"color":"gray","italic":false,"text":"Click to go to cosmetic selection"}'],food={nutrition:0,saturation:0,can_always_eat:true}] 1

### DONE
advancement revoke @s only gui:updateinventory
