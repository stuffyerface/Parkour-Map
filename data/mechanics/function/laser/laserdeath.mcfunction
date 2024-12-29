tellraw @s [{"text": "YIKES!", "color": "red","bold": true},{"text": " You touched too many lasers and had to restart.","color": "white", "bold": false}]
function c:restartlevel
execute as @s run playsound entity.generic.hurt block @s ~ ~ ~ 1 1