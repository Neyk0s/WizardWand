execute store result score @s monNombre run random value 0..5

# 1. Son d'invocation (plus "éthéré" pour vex)
playsound entity.illusioner.ambient master @a ~ ~ ~ 0.8 1 1

# 2. SUMMON VEX devant les yeux (tags identiques pour kill facile)
execute if score @s monNombre matches 0 run execute at @s anchored eyes run summon vex ^ ^ ^2 {Tags:["magic_vex","vex_minion_0"],NoAI:1b,Health:8f,Silent:1b,DeathLootTable:"minecraft:empty",Glowing:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35},{id:"minecraft:generic.attack_damage",base:5},{id:"minecraft:generic.max_health",base:8}]}
execute if score @s monNombre matches 1 run execute at @s anchored eyes run summon vex ^ ^ ^2 {Tags:["magic_vex","vex_minion_1"],NoAI:1b,Health:8f,Silent:1b,DeathLootTable:"minecraft:empty",Glowing:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35},{id:"minecraft:generic.attack_damage",base:5},{id:"minecraft:generic.max_health",base:8}]}
execute if score @s monNombre matches 2 run execute at @s anchored eyes run summon vex ^ ^ ^2 {Tags:["magic_vex","vex_minion_2"],NoAI:1b,Health:8f,Silent:1b,DeathLootTable:"minecraft:empty",Glowing:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35},{id:"minecraft:generic.attack_damage",base:5},{id:"minecraft:generic.max_health",base:8}]}
execute if score @s monNombre matches 3 run execute at @s anchored eyes run summon vex ^ ^ ^2 {Tags:["magic_vex","vex_minion_3"],NoAI:1b,Health:8f,Silent:1b,DeathLootTable:"minecraft:empty",Glowing:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35},{id:"minecraft:generic.attack_damage",base:5},{id:"minecraft:generic.max_health",base:8}]}
execute if score @s monNombre matches 4 run execute at @s anchored eyes run summon vex ^ ^ ^2 {Tags:["magic_vex","vex_minion_4"],NoAI:1b,Health:8f,Silent:1b,DeathLootTable:"minecraft:empty",Glowing:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35},{id:"minecraft:generic.attack_damage",base:5},{id:"minecraft:generic.max_health",base:8}]}
execute if score @s monNombre matches 5 run execute at @s anchored eyes run summon vex ^ ^ ^2 {Tags:["magic_vex","vex_minion_5"],NoAI:1b,Health:8f,Silent:1b,DeathLootTable:"minecraft:empty",Glowing:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35},{id:"minecraft:generic.attack_damage",base:5},{id:"minecraft:generic.max_health",base:8}]}

team join test @e[tag=magic_vex,limit=1]

# 3. Vecteur vitesse (vex volent naturellement)
execute at @s anchored eyes positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.8 {Tags:["vec_calc"],Duration:1}

# 4. Appliquer vitesse
data modify entity @e[tag=magic_vex,limit=1,sort=nearest] Motion set from entity @e[tag=vec_calc,limit=1] Pos

# 5. Nettoyage + activation IA
kill @e[tag=vec_calc]
data modify entity @e[type=vex,limit=1,sort=nearest] NoAI set value 0b


scoreboard players reset @s magic_wand.charge

# Schedule kill (mêmes fonctions, juste adapte les noms)
execute if score @s monNombre matches 0 run schedule function wizardwand:vexwand/kill_vex_0 5s
execute if score @s monNombre matches 1 run schedule function wizardwand:vexwand/kill_vex_1 5s
execute if score @s monNombre matches 2 run schedule function wizardwand:vexwand/kill_vex_2 5s
execute if score @s monNombre matches 3 run schedule function wizardwand:vexwand/kill_vex_3 5s
execute if score @s monNombre matches 4 run schedule function wizardwand:vexwand/kill_vex_4 5s
execute if score @s monNombre matches 5 run schedule function wizardwand:vexwand/kill_vex_5 5s