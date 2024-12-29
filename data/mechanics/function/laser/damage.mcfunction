execute if score @s customHealth matches 4 run return run function mechanics:laser/laserdeath
execute as @s run playsound entity.generic.hurt block @s ~ ~ ~ 1 1
tellraw @s [{"text": "OUCH!", "color": "red","bold": true},{"text": " Don't touch the lasers.","color": "white", "bold": false}]
scoreboard players set @s iframes 20

execute if score @s customHealth matches 20 run return run function mechanics:laser/sethealth {value:16}
execute if score @s customHealth matches 16 run return run function mechanics:laser/sethealth {value:12}
execute if score @s customHealth matches 12 run return run function mechanics:laser/sethealth {value:8}
execute if score @s customHealth matches 8 run return run function mechanics:laser/sethealth {value:4}

# In case player has never bee assigned a health score
function mechanics:laser/sethealth {value:16}