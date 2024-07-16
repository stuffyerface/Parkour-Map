setblock ~ ~ ~ air destroy
summon text_display ~ ~.5 ~ {shadow:1b,Tags:["breakable_wall_countdown","new"],background:0,text:'{"text":"5.000"}',billboard:"center","text_opacity":120}
scoreboard players set @e[type=text_display,tag=breakable_wall_countdown,tag=new] countdown_s 5
scoreboard players set @e[type=text_display,tag=breakable_wall_countdown,tag=new] countdown_ms 0
execute as @e[type=text_display,tag=breakable_wall_countdown,tag=new] at @s run kill @e[type=text_display,tag=breakable_wall_countdown,tag=!new,distance=0..0.5]
execute as @e[type=text_display,tag=breakable_wall_countdown,tag=new] run tag @s remove new