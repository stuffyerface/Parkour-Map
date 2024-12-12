scoreboard players remove @s timesJumped 1
execute unless entity @s[tag=inRun] run return fail

scoreboard players add _totaljumps variables 1
execute store result storage sidebar:jumps jumps int 1 run scoreboard players get _totaljumps variables
function sidebar:updatejumps with storage sidebar:jumps