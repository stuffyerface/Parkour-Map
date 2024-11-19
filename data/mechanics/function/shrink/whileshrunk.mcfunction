scoreboard players add @s shrinkTimer 1


# Unshrink
execute if score @s shrinkTimer matches ..60 run return 0
scoreboard players reset @s shrinkTimer
function mechanics:shrink/unshrink