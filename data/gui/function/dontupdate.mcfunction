advancement revoke @s only gui:updateinventory
execute if entity @s[tag=DEBUG] run return fail
tag @s remove dontUpdateInventory