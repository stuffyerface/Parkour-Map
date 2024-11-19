scoreboard players add @s levelCountdown 1
execute if score @s levelCountdown matches 2 run attribute @s minecraft:movement_speed base set 0
execute if score @s levelCountdown matches 2 run attribute @s minecraft:jump_strength base set 0

execute if score @s levelCountdown matches 2 run scoreboard players operation _selectedLevel variables = @s level
execute if score @s levelCountdown matches 2 as @e[type=marker,tag=levelMarker] if score _selectedLevel variables = @s levelMarker run tag @s add selectedLevel
execute if score @s levelCountdown matches 2 run tp @s @n[type=marker,tag=levelMarker,tag=selectedLevel]
execute if score @s levelCountdown matches 2 run tag @e[type=marker,tag=levelMarker,tag=selectedLevel] remove selectedLevel

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
execute if score @s level matches 44 run function mechanics:switchingblocks/attemptstart
function mechanics:startrun
