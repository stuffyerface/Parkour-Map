execute if score @s leave matches 1.. run function utils:returningplayer
execute if score @s placeTnt matches 1.. run function mechanics:tnt/place_tnt
execute as @s[y=-164,dy=100] run tp @s 0 500 0

execute as @s[tag=inRun] run function mechanics:runtimer

execute if score @s level matches 48 run function mechanics:fallingblock/standingon

execute as @s[tag=selectingLevel] run function raycast:start
execute as @s[tag=selectingLevel] run function raycast:selecting

execute as @s[tag=startCountdown] run function mechanics:countdown

execute as @s[gamemode=creative] at @n[type=marker,tag=endPlate,distance=..4] run gamemode spectator @s
execute as @s[gamemode=spectator] at @n[type=marker,tag=endPlate,distance=..4] run return 0
execute as @s[gamemode=spectator] run gamemode creative