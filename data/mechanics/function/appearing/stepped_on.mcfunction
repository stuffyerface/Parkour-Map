tag @s add stepped_on
execute at @s run function mechanics:appearing/showme
scoreboard players set _showBlock variables 1
scoreboard players operation _showBlock variables += @s appearingIndex
execute as @e[type=marker,tag=appearingBlock] at @s if score _showBlock variables = @s appearingIndex run function mechanics:appearing/showme