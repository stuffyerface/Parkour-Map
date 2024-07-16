advancement revoke @s only gui:lobbyselect
scoreboard players set @s inventoryState -1
clear @s

execute at @s run summon minecraft:allay 0 190 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["new"]}
ride @s mount @e[type=allay,tag=new,limit=1]
tag @e[type=allay,tag=new] remove new


effect give @s minecraft:invisibility infinite 0 true