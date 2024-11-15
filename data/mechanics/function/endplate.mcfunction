execute as @s[tag=!inRun] run return run advancement revoke @s only mechanics:pressureplate
execute store result score _currLevel variables run scoreboard players get @s level
scoreboard players reset _correctPlate variables
execute as @e[type=marker,tag=endPlate,limit=1,distance=..1] if score @s level = _currLevel variables run scoreboard players set _correctPlate variables 1
execute if score _correctPlate variables matches 1 run return run function mechanics:finish
say U idiot wrong plate
advancement revoke @s only mechanics:pressureplate