# Gestion du reset + effet visuel
execute as @a[scores={giant_timer=1..}] run scoreboard players remove @s giant_timer 1
execute as @a[scores={giant_timer=20}] at @s run playsound entity.puffer_fish.blow_out player @a ~ ~ ~ 1.0 1.2
execute as @a[scores={giant_timer=0}] at @s run playsound entity.puffer_fish.blow_up player @a ~ ~ ~ 1.0 0.8

execute as @a[scores={giant_timer=0}] at @s run particle minecraft:poof ~ ~1 ~ 0.5 1 0.5 0.05 50 force

execute as @a[scores={giant_timer=0}] run function wizardwand:giantwand/reset_giant_attributes

execute as @a[scores={giant_timer=0}] run scoreboard players reset @s giant_timer