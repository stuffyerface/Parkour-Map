$tag @s add finished_level_$(level)
$execute if score @s currentRunMilliseconds matches ..5 if score @s currentRunMinutes matches 1 run return run say I completed level $(level) in $(time_m) minute and $(time_s).0$(time_ms) seconds
$execute if score @s currentRunMilliseconds matches 6.. if score @s currentRunMinutes matches 1 run return run say I completed level $(level) in $(time_m) minute and $(time_s).$(time_ms) seconds
$execute if score @s currentRunMilliseconds matches ..5 run say I completed level $(level) in $(time_m) minutes and $(time_s).0$(time_ms) seconds
$execute if score @s currentRunMilliseconds matches 6.. run say I completed level $(level) in $(time_m) minutes and $(time_s).$(time_ms) seconds