# do action bar
title @s actionbar "Right Click to select a level!"

# test for clicks idk
execute as @s[tag=selectedLevel] run tag @s remove selectedLevel

# ride again if you fell off (l)
execute on vehicle run return 1
function c:selectlevel