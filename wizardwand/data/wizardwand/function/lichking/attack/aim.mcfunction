# Increase timer for the aim
scoreboard players add @s lich_aim_timer 1

# Dialog to play for the chosen attack
execute if score @s lich_attack_choice matches 1 if score @s lich_aim_timer matches 1 run tellraw @a [{"text":"<","color":"#0059b3","font":"minecraft:default"},{"text":"Philippe","color":"#0059b3","font":"minecraft:alt"},{"text":"> ","color":"#0059b3","font":"minecraft:default"},{"translate":"id.dialogue.lichking.attack_1","color":"#ffff4d","font":"minecraft:default"}]
execute if score @s lich_attack_choice matches 2 if score @s lich_aim_timer matches 1 run tellraw @a [{"text":"<","color":"#0059b3","font":"minecraft:default"},{"text":"Philippe","color":"#0059b3","font":"minecraft:alt"},{"text":"> ","color":"#0059b3","font":"minecraft:default"},{"translate":"id.dialogue.lichking.attack_2.part_1","color":"#cce6ff","font":"minecraft:default"},{"translate":"id.dialogue.lichking.attack_2.part_2","color":"#3399ff","font":"minecraft:alt"},{"translate":"id.dialogue.lichking.attack_2.part_3","color":"#cce6ff","font":"minecraft:default"}]
execute if score @s lich_attack_choice matches 3 if score @s lich_aim_timer matches 1 run tellraw @a [{"text":"<","color":"#0059b3","font":"minecraft:default"},{"text":"Philippe","color":"#0059b3","font":"minecraft:alt"},{"text":"> ","color":"#0059b3","font":"minecraft:default"},{"translate":"id.dialogue.lichking.attack_3","color":"#4ae2ff","font":"minecraft:default"}]
execute if score @s lich_attack_choice matches 4 if score @s lich_aim_timer matches 1 run tellraw @a [{"text":"<","color":"#0059b3","font":"minecraft:default"},{"text":"Philippe","color":"#0059b3","font":"minecraft:alt"},{"text":"> ","color":"#0059b3","font":"minecraft:default"},{"translate":"id.dialogue.lichking.attack_4","color":"#26b33b","font":"minecraft:default"}]

# First aim
execute if score @s lich_aim_timer matches 1..20 run particle minecraft:dust{color:[1.0,0.8,0.3],scale:1.2} ~ ~2 ~ 0.1 2 0.1 0.01 15
execute if score @s lich_aim_timer matches 20 at @a[tag=aimed_by_lich_king,limit=1] run tp @s ~ ~ ~

# Second aim
execute if score @s lich_aim_timer matches 21..40 run particle minecraft:dust{color:[1.0,0.4,0.0],scale:1.4} ~ ~2 ~ 0.1 2 0.1 0.01 25
execute if score @s lich_aim_timer matches 40 at @a[tag=aimed_by_lich_king,limit=1] run tp @s ~ ~ ~

# Third aim
execute if score @s lich_aim_timer matches 41..60 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.6} ~ ~2 ~ 0.1 2 0.1 0.01 45

# Launch attack
execute if score @s lich_attack_choice matches 1 if score @s lich_aim_timer matches 60 run function wizardwand:lichking/attack/lightning

execute if score @s lich_attack_choice matches 2 if score @s lich_aim_timer matches 60 run function wizardwand:lichking/attack/summon_minions

execute if score @s lich_attack_choice matches 3 if score @s lich_aim_timer matches 60 run function wizardwand:lichking/attack/lich_venom

execute if score @s lich_attack_choice matches 4 if score @s lich_aim_timer matches 60 run function wizardwand:lichking/attack/lich_plague