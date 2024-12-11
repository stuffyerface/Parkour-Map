$tag @s add finished_level_$(level)
$execute as @e[type=marker,tag=levelMarker,scores={levelMarker=$(level)}] run tag @s add _tmpselected
execute as @e[tag=_tmpselected] store result score _toBeat variables run data get entity @s data.tobeat 1
$execute as @e[tag=_tmpselected] if score _toBeat variables matches $(time_total).. run tag @s add beaten
tag @e[tag=_tmpselected] add completed 
tag @e[tag=_tmpselected] remove _tmpselected
$tellraw @s [{"color":"white","selector":"@s"},{"color":"yellow","text":" has completed level "},{"bold":true,"color":"gold","text":"$(level)"},{"color":"yellow","text":" in "},{"color":"blue","text":"$(time_m):$(s_padding)$(time_s).$(ms_padding)$(time_ms)"},{"color":"yellow","text":"."},{"bold":true,"color":"light_purple","text":""}]