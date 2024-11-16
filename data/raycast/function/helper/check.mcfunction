data modify storage raycast:helper/glowcolor colorOverride set value -1
$execute as @s[tag=finished_level_$(level)] run data modify storage raycast:helper/glowcolor colorOverride set value "6604900"
function raycast:helper/glowcolor with storage raycast:helper/glowcolor