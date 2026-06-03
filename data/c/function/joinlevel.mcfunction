
ride @s dismount
$function mechanics:joinlevelstuff {level:$(level)}
kill @e[type=text_display,tag=levelHighlightArrow]
execute as @e[type=interaction,tag=levelHighlight] run data merge entity @s {width:0}
