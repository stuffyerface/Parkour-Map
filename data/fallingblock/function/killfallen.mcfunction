particle block{block_state:"minecraft:yellow_glazed_terracotta"} ~ ~ ~ .25 .25 .25 2 40 normal
playsound block.grass.break ambient @a ~ ~ ~ .2 .3 0
kill @n[type=block_display,tag=falling_block_visual,distance=..2]
tp @s ~ -10000 ~
kill @s