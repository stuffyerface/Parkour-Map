# somehow make a better hitbox
execute as @e[type=player,distance=..0.8,tag=inRun,scores={level=47}] unless score @s iframes matches 1.. run function mechanics:laser/damage