playsound entity.wolf.growl master @a ~ ~ ~ 0.8 1.2 0.8
playsound entity.wolf.growl master @a ~ ~ ~ 0.8 1.2 0.8
playsound entity.wolf.growl master @a ~ ~ ~ 0.8 1.2 0.8


summon wolf ^ ^2 ^2 {Tags:["magic_wolf_gamble","new_summon_1"],variant:"minecraft:rusty",Tame:1,DeathLootTable:"minecraft:empty",Glowing:1, attributes:[{id:"minecraft:scale", "base": 2},{id:"minecraft:movement_speed", "base": 0.45},{id:"minecraft:attack_damage", "base": 16}]}
summon wolf ^2 ^2 ^2 {Tags:["magic_wolf_gamble","new_summon_2"],variant:"minecraft:black",Tame:1,DeathLootTable:"minecraft:empty",Glowing:1, attributes:[{id:"minecraft:scale", "base": 2},{id:"minecraft:movement_speed", "base": 0.45},{id:"minecraft:attack_damage", "base": 16}]}
summon wolf ^-2 ^2 ^2 {Tags:["magic_wolf_gamble","new_summon_3"],variant:"minecraft:ashen",Tame:1,DeathLootTable:"minecraft:empty",Glowing:1, attributes:[{id:"minecraft:scale", "base": 2},{id:"minecraft:movement_speed", "base": 0.45},{id:"minecraft:attack_damage", "base": 16}]}

execute at @s run data modify entity @e[tag=new_summon_1,limit=1,sort=nearest] Owner set from entity @s UUID
execute at @s run data modify entity @e[tag=new_summon_2,limit=1,sort=nearest] Owner set from entity @s UUID
execute at @s run data modify entity @e[tag=new_summon_3,limit=1,sort=nearest] Owner set from entity @s UUID

# Apparemment ces attributs ne s'applique pas dans le summon
attribute @e[tag=new_summon_1, limit=1] minecraft:max_health base set 60
attribute @e[tag=new_summon_2, limit=1] minecraft:max_health base set 60
attribute @e[tag=new_summon_3, limit=1] minecraft:max_health base set 60

effect give @e[tag=new_summon_1] minecraft:instant_health 21 20
effect give @e[tag=new_summon_2] minecraft:instant_health 21 20
effect give @e[tag=new_summon_3] minecraft:instant_health 21 20

# Particules
execute at @e[tag=magic_wolf_gamble,tag=new_summon_1,limit=1,sort=nearest] run particle minecraft:flash{color:[0.3,0.8,0.1,1.0]} ~ ~1.5 ~ 0 0 0 1 0 normal
execute at @e[tag=magic_wolf_gamble,tag=new_summon_1,limit=1,sort=nearest] run particle minecraft:spore_blossom_air ~ ~1.5 ~ 2.0 1.5 2.0 0.05 150 force
execute at @e[tag=magic_wolf_gamble,tag=new_summon_1,limit=1,sort=nearest] run particle minecraft:dust{color:[0.19,0.47,0.15],scale:1.8} ~ ~1 ~ 1.2 1.0 1.2 0.1 60 force
execute at @e[tag=magic_wolf_gamble,tag=new_summon_1,limit=1,sort=nearest] run particle minecraft:dust{color:[0.39,0.23,0.11],scale:1.6} ~ ~0.5 ~ 1.2 0.5 1.2 0.1 40 force

execute at @e[tag=magic_wolf_gamble,tag=new_summon_2,limit=1,sort=nearest] run particle minecraft:flash{color:[0.3,0.8,0.1,1.0]} ~ ~1.5 ~ 0 0 0 1 0 normal
execute at @e[tag=magic_wolf_gamble,tag=new_summon_2,limit=1,sort=nearest] run particle minecraft:spore_blossom_air ~ ~1.5 ~ 2.0 1.5 2.0 0.05 150 force
execute at @e[tag=magic_wolf_gamble,tag=new_summon_2,limit=1,sort=nearest] run particle minecraft:dust{color:[0.19,0.47,0.15],scale:1.8} ~ ~1 ~ 1.2 1.0 1.2 0.1 60 force
execute at @e[tag=magic_wolf_gamble,tag=new_summon_2,limit=1,sort=nearest] run particle minecraft:dust{color:[0.39,0.23,0.11],scale:1.6} ~ ~0.5 ~ 1.2 0.5 1.2 0.1 40 force

execute at @e[tag=magic_wolf_gamble,tag=new_summon_3,limit=1,sort=nearest] run particle minecraft:flash{color:[0.3,0.8,0.1,1.0]} ~ ~1.5 ~ 0 0 0 1 0 normal
execute at @e[tag=magic_wolf_gamble,tag=new_summon_3,limit=1,sort=nearest] run particle minecraft:spore_blossom_air ~ ~1.5 ~ 2.0 1.5 2.0 0.05 150 force
execute at @e[tag=magic_wolf_gamble,tag=new_summon_3,limit=1,sort=nearest] run particle minecraft:dust{color:[0.19,0.47,0.15],scale:1.8} ~ ~1 ~ 1.2 1.0 1.2 0.1 60 force
execute at @e[tag=magic_wolf_gamble,tag=new_summon_3,limit=1,sort=nearest] run particle minecraft:dust{color:[0.39,0.23,0.11],scale:1.6} ~ ~0.5 ~ 1.2 0.5 1.2 0.1 40 force

tag @e[tag=new_summon_1,tag=magic_wolf_gamble] remove new_summon_1
tag @e[tag=new_summon_2,tag=magic_wolf_gamble] remove new_summon_2
tag @e[tag=new_summon_3,tag=magic_wolf_gamble] remove new_summon_3

scoreboard players reset @s magic_wand.charge