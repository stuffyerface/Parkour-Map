advancement revoke @s only gui:updateinventory
execute if entity @s[gamemode=!adventure] run return fail
tag @s remove dontUpdateInventory