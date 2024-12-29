execute if score _laserstate variables matches ..-1 run return fail

scoreboard players remove _laserstate variables 1
execute if score _laserstate variables matches 0 run scoreboard players set _laserstate variables 75


execute if score _laserstate variables matches 20 as @a[tag=inRun,scores={level=47}] at @s run playsound entity.glow_squid.hurt block @s ~ ~ ~ 1.0 0.4
execute if score _laserstate variables matches 75 as @a[tag=inRun,scores={level=47}] at @s run playsound entity.glow_squid.hurt block @s ~ ~ ~ 0.1 1.2
execute if score _laserstate variables matches 70 as @a[tag=inRun,scores={level=47}] at @s run playsound entity.glow_squid.hurt block @s ~ ~ ~ 1.0 1.0