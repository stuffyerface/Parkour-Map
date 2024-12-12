# ride again if you fell off
execute on vehicle run return 1
summon item_display 0 206 0 {Tags:["new","levelSelector"]}
ride @s mount @n[type=item_display,tag=levelSelector,tag=new]
tag @e[type=item_display,tag=levelSelector,tag=new] remove new