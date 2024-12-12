execute if entity @s[tag=!spectating,tag=!inRun,tag=!startCountdown,tag=!selectingLevel] run function utils:newplayer
execute if score @s leave matches 1.. run function utils:returningplayer
execute if score @s placeTnt matches 1.. run function mechanics:tnt/place_tnt
execute if score @s timesJumped matches 1.. run function sidebar:addjump
execute as @s[y=-164,dy=100] run tp @s 0 500 0

execute as @s[tag=inRun] run function mechanics:runtimer

execute if score @s level matches 48 run function mechanics:fallingblock/standingon
execute if score @s level matches 49 run function mechanics:appearing/standingon

execute as @s[tag=selectingLevel] run function raycast:start
execute as @s[tag=selectingLevel] run function raycast:selecting

execute as @s[tag=startCountdown] run function mechanics:countdown

execute as @s[tag=inRun] run function mechanics:bossbar/update

execute as @s[gamemode=creative] at @n[type=marker,tag=endPlate,distance=..4] run gamemode spectator @s
execute as @s[gamemode=creative] at @n[type=player,tag=inRun,distance=..4] run gamemode spectator @s
execute as @s[gamemode=spectator] at @n[type=marker,tag=endPlate,distance=..4] run return 0
execute as @s[gamemode=spectator] at @n[type=player,tag=inRun,distance=..4] run return 0
execute as @s[gamemode=spectator] run gamemode creative

execute as @s[tag=shrunk] run function mechanics:shrink/whileshrunk