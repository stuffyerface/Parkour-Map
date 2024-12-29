execute as @s run playsound entity.generic.hurt block @s ~ ~ ~ 1 1
execute if score @s customHealth matches 5 run return run function mechanics:laser/laserdeath
tellraw @s [{"text": "OUCH!", "color": "red","bold": true},{"text": " Don't touch the lasers.","color": "white", "bold": false}]
execute if score @s customHealth matches 20 run return run function mechanics:laser/sethealth {value:15}
execute if score @s customHealth matches 15 run return run function mechanics:laser/sethealth {value:10}
execute if score @s customHealth matches 10 run return run function mechanics:laser/sethealth {value:5}

# In case player has never bee assigned a health score
function mechanics:laser/sethealth {value:15}