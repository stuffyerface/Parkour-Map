$execute if score @s countdown_ms matches ..10 run data merge entity @s {text:'{"text":"$(timer_s).0$(timer_ms)","color":"$(color)"}'}
$execute if score @s countdown_ms matches 10.. run data merge entity @s {text:'{"text":"$(timer_s).$(timer_ms)","color":"$(color)"}'}
