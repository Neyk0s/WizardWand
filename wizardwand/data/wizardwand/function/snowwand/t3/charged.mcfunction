playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.8 1.2 0.8

summon snow_golem ^ ^ ^2 {Tags:["magic_snowgolem_t3", "magic_shot"],Health:7,Silent:1,DeathLootTable:"minecraft:empty", Glowing:1,attributes:[{id:"minecraft:movement_speed",base:0.5}]}
summon snow_golem ^2 ^ ^2 {Tags:["magic_snowgolem_t3", "magic_snowgolem_t3_bis", "magic_shot"],Health:7,Silent:1,DeathLootTable:"minecraft:empty", Glowing:1,attributes:[{id:"minecraft:movement_speed",base:0.5}]}

#TODO: créer un tag temporaire pour jouer les effets
execute at @e[tag=magic_snowgolem_t3,limit=1,sort=nearest] run particle minecraft:flash{color:[0.600,0.900,1.000,1.00]} ~ ~1 ~ 0 0 0 1 0 normal
execute at @e[tag=magic_snowgolem_t3,limit=1,sort=nearest] run particle minecraft:snowflake ~ ~0.5 ~ 0.5 0.5 0.5 0.1 50 force
execute at @e[tag=magic_snowgolem_t3,limit=1,sort=nearest] run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.5 0.3 0.05 20 force

execute at @e[tag=magic_snowgolem_t3_bis,limit=1,sort=nearest] run particle minecraft:flash{color:[0.600,0.900,1.000,1.00]} ~ ~1 ~ 0 0 0 1 0 normal
execute at @e[tag=magic_snowgolem_t3_bis,limit=1,sort=nearest] run particle minecraft:snowflake ~ ~0.5 ~ 0.5 0.5 0.5 0.1 50 force
execute at @e[tag=magic_snowgolem_t3_bis,limit=1,sort=nearest] run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.5 0.3 0.05 20 force

scoreboard players reset @s magic_wand.charge
