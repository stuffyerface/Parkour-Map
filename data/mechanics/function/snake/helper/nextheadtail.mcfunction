# setup the next head and tail
scoreboard players add @s snakeHead 1

# if head is = _snake$(id)nextID variables, set to 0
$execute if score @s snakeHead = _snake$(id)nextID variables run scoreboard players set @s snakeHead 0


# remove 3 from snake head to find tail
scoreboard players operation _currsnakeHead variables = @s snakeHead
scoreboard players operation _subt1 variables = @s snakeHead
scoreboard players set _subt2 variables 5
scoreboard players operation _subt1 variables -= _subt2 variables
scoreboard players operation @s snakeTail = _subt1 variables

# if the tail is less than 0, add it to _snake$(id)nextID variables
$execute if score @s snakeTail matches ..-1 run scoreboard players operation @s snakeTail += _snake$(id)nextID variables


scoreboard players operation _currsnakeTail variables = @s snakeTail