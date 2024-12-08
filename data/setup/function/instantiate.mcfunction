scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add inventoryState dummy
scoreboard objectives add currentRunMilliseconds dummy
scoreboard objectives add currentRunSeconds dummy
scoreboard objectives add currentRunMinutes dummy
scoreboard objectives add countdown_s dummy
scoreboard objectives add countdown_ms dummy
scoreboard objectives add age dummy
scoreboard objectives add placeTnt minecraft.used:minecraft.tnt
scoreboard objectives add range dummy
scoreboard objectives add snake dummy
scoreboard objectives add snakeHead dummy
scoreboard objectives add snakeTail dummy
scoreboard objectives add snakeID dummy
scoreboard players set _currentsnakeTail variables 0 
scoreboard objectives add level dummy
scoreboard objectives add playerID dummy
scoreboard players reset * playerID
scoreboard players set .current playerID 0
execute as @a run function utils:giveplayerid
scoreboard objectives add levelMarker dummy
scoreboard objectives add levelCountdown dummy
scoreboard objectives add shrinkTimer dummy
scoreboard objectives add appearingIndex dummy

scoreboard objectives add utils dummy
scoreboard objectives add variables dummy

scoreboard objectives add sidebar dummy "sidebar"

team add noCollide
team modify noCollide collisionRule never
team modify noCollide friendlyFire false
team modify noCollide seeFriendlyInvisibles false

gamerule doDaylightCycle false
gamerule keepInventory true
gamerule drowningDamage false
gamerule doFireTick false
gamerule randomTickSpeed 0