execute if entity @s[tag=!spectating] run return fail

scoreboard players set _nextlevel variables -1
execute if entity @s[tag=!finished_level_50] run scoreboard players set _nextlevel variables 50
execute if entity @s[tag=!finished_level_49] run scoreboard players set _nextlevel variables 49
execute if entity @s[tag=!finished_level_48] run scoreboard players set _nextlevel variables 48
execute if entity @s[tag=!finished_level_47] run scoreboard players set _nextlevel variables 47
execute if entity @s[tag=!finished_level_46] run scoreboard players set _nextlevel variables 46
execute if entity @s[tag=!finished_level_45] run scoreboard players set _nextlevel variables 45
execute if entity @s[tag=!finished_level_44] run scoreboard players set _nextlevel variables 44
execute if entity @s[tag=!finished_level_43] run scoreboard players set _nextlevel variables 43
execute if entity @s[tag=!finished_level_42] run scoreboard players set _nextlevel variables 42
execute if entity @s[tag=!finished_level_41] run scoreboard players set _nextlevel variables 41
execute if entity @s[tag=!finished_level_40] run scoreboard players set _nextlevel variables 40
execute if entity @s[tag=!finished_level_39] run scoreboard players set _nextlevel variables 39
execute if entity @s[tag=!finished_level_38] run scoreboard players set _nextlevel variables 38
execute if entity @s[tag=!finished_level_37] run scoreboard players set _nextlevel variables 37
execute if entity @s[tag=!finished_level_36] run scoreboard players set _nextlevel variables 36
execute if entity @s[tag=!finished_level_35] run scoreboard players set _nextlevel variables 35
execute if entity @s[tag=!finished_level_34] run scoreboard players set _nextlevel variables 34
execute if entity @s[tag=!finished_level_33] run scoreboard players set _nextlevel variables 33
execute if entity @s[tag=!finished_level_32] run scoreboard players set _nextlevel variables 32
execute if entity @s[tag=!finished_level_31] run scoreboard players set _nextlevel variables 31
execute if entity @s[tag=!finished_level_30] run scoreboard players set _nextlevel variables 30
execute if entity @s[tag=!finished_level_29] run scoreboard players set _nextlevel variables 29
execute if entity @s[tag=!finished_level_28] run scoreboard players set _nextlevel variables 28
execute if entity @s[tag=!finished_level_27] run scoreboard players set _nextlevel variables 27
execute if entity @s[tag=!finished_level_26] run scoreboard players set _nextlevel variables 26
execute if entity @s[tag=!finished_level_25] run scoreboard players set _nextlevel variables 25
execute if entity @s[tag=!finished_level_24] run scoreboard players set _nextlevel variables 24
execute if entity @s[tag=!finished_level_23] run scoreboard players set _nextlevel variables 23
execute if entity @s[tag=!finished_level_22] run scoreboard players set _nextlevel variables 22
execute if entity @s[tag=!finished_level_21] run scoreboard players set _nextlevel variables 21
execute if entity @s[tag=!finished_level_20] run scoreboard players set _nextlevel variables 20
execute if entity @s[tag=!finished_level_19] run scoreboard players set _nextlevel variables 19
execute if entity @s[tag=!finished_level_18] run scoreboard players set _nextlevel variables 18
execute if entity @s[tag=!finished_level_17] run scoreboard players set _nextlevel variables 17
execute if entity @s[tag=!finished_level_16] run scoreboard players set _nextlevel variables 16
execute if entity @s[tag=!finished_level_15] run scoreboard players set _nextlevel variables 15
execute if entity @s[tag=!finished_level_14] run scoreboard players set _nextlevel variables 14
execute if entity @s[tag=!finished_level_13] run scoreboard players set _nextlevel variables 13
execute if entity @s[tag=!finished_level_12] run scoreboard players set _nextlevel variables 12
execute if entity @s[tag=!finished_level_11] run scoreboard players set _nextlevel variables 11
execute if entity @s[tag=!finished_level_10] run scoreboard players set _nextlevel variables 10
execute if entity @s[tag=!finished_level_9] run scoreboard players set _nextlevel variables 9
execute if entity @s[tag=!finished_level_8] run scoreboard players set _nextlevel variables 8
execute if entity @s[tag=!finished_level_7] run scoreboard players set _nextlevel variables 7
execute if entity @s[tag=!finished_level_6] run scoreboard players set _nextlevel variables 6
execute if entity @s[tag=!finished_level_5] run scoreboard players set _nextlevel variables 5
execute if entity @s[tag=!finished_level_4] run scoreboard players set _nextlevel variables 4
execute if entity @s[tag=!finished_level_3] run scoreboard players set _nextlevel variables 3
execute if entity @s[tag=!finished_level_2] run scoreboard players set _nextlevel variables 2
execute if entity @s[tag=!finished_level_1] run scoreboard players set _nextlevel variables 1

execute if score _nextlevel variables matches -1 run return run tellraw @s "Guy u beated it all"

gamemode adventure @s
tag @s remove spectating
attribute @s entity_interaction_range base set 5
attribute @s block_interaction_range base set 5

function gui:inventoryupdated
execute store result storage c:nextlevel level int 1 run scoreboard players get _nextlevel variables
function mechanics:joinlevelstuff with storage c:nextlevel