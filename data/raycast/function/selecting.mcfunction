# do action bar
title @s actionbar "Right Click to select a level!"

# test for clicks idk
execute as @s[tag=selectedLevel] run tag @s remove selectedLevel

# ride again if you fell off (l)
execute on vehicle run return 1
summon item_display 0 206 0 {Tags:["new","levelSelector"]}
ride @s mount @n[type=item_display,tag=levelSelector,tag=new]
tag @e[type=item_display,tag=levelSelector,tag=new] remove new