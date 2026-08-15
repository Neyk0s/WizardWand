tellraw @a [{"text":"<","color":"#0059b3","font":"minecraft:default"},{"text":"Philippe","color":"#0059b3","font":"minecraft:alt"},{"text":"> ","color":"#0059b3","font":"minecraft:default"},{"translate":"id.dialogue.lichking.phase_3_a","color":"dark_green","font":"minecraft:alt"},{"translate":"id.dialogue.lichking.phase_3_b","color":"#cce6ff","font":"minecraft:default"}]

# Add tag to play only once the summoning of the giant
tag @s add triggered_giant

# Sounds
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 0.5

# Summon
execute rotated ~ 0 run summon giant ^ ^3 ^5 {Tags:["lich_minion"],CustomName:{text:"Laurent",color:"dark_green", "font":"minecraft:alt"},CustomNameVisible:1b}
execute at @e[tag=lich_minion,type=giant,limit=1,sort=nearest] run summon phantom ~ ~12 ~ {Tags:["lich_minion"],Size:3}
execute at @e[tag=lich_minion,type=giant,limit=1,sort=nearest] run summon phantom ~ ~12 ~ {Tags:["lich_minion"],Size:3}
execute at @e[tag=lich_minion,type=giant,limit=1,sort=nearest] run summon phantom ~ ~12 ~ {Tags:["lich_minion"],Size:3}
execute at @e[tag=lich_minion,type=giant,limit=1,sort=nearest] run summon phantom ~ ~12 ~ {Tags:["lich_minion"],Size:3}