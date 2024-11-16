execute if score @s leave matches 1.. run function utils:returningplayer
execute if score @s placeTnt matches 1.. run function mechanics:tnt/place_tnt
execute as @s[y=-164,dy=100] run tp @s 0 500 0

execute as @s[tag=inRun] run function mechanics:runtimer

execute if score @s level matches 48 run function mechanics:fallingblock/standingon

execute as @s[tag=selectingLevel] run function raycast:start