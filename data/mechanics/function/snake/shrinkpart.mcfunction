execute at @s run setblock ~ ~ ~ air
data merge entity @s {transformation:{translation:[-.1f,-.1f,-.1f],scale:[.2f,.2f,.2f]},start_interpolation:-1,interpolation_duration:5}