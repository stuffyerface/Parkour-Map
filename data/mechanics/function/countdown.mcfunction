scoreboard players add @s levelCountdown 1
execute if score @s levelCountdown matches 2 run attribute @s minecraft:movement_speed base set 0
execute if score @s levelCountdown matches 2 run attribute @s minecraft:jump_strength base set 0
execute if score @s levelCountdown matches 2 run tp @s @n[tag=levelMarker]

# Countdown: 3
execute if score @s levelCountdown matches 60 run title @s title ""
execute if score @s levelCountdown matches 60 run title @s subtitle {"bold":true,"color":"gold","text":"3"}
execute if score @s levelCountdown matches 60 run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0.1

# Countdown: 2
execute if score @s levelCountdown matches 80 run title @s title ""
execute if score @s levelCountdown matches 80 run title @s subtitle {"bold":true,"color":"gold","text":"2"}
execute if score @s levelCountdown matches 80 run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0.1

# Countdown: 1
execute if score @s levelCountdown matches 100 run title @s title ""
execute if score @s levelCountdown matches 100 run title @s subtitle {"bold":true,"color":"gold","text":"1"}
execute if score @s levelCountdown matches 100 run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0.1

# Countdown: GO!
execute if score @s levelCountdown matches 120 run title @s title ""
execute if score @s levelCountdown matches 120 run title @s subtitle {"bold":true,"color":"gold","text":"GO!"}
execute if score @s levelCountdown matches 120 run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 1 0.9

# Level Start
execute if score @s levelCountdown matches ..120 run return 1
tag @s remove startCountdown
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:movement_speed base set 0.1
scoreboard players reset @s levelCountdown
function mechanics:startrun