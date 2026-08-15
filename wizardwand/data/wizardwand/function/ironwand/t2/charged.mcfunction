playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.8 1.2 0.8

summon iron_golem ^ ^3 ^4.5 {Tags:["magic_irongolem_t2"],Health:40,Silent:1,DeathLootTable:"minecraft:empty", Glowing:1,attributes:[{id:"minecraft:movement_speed",base:0.3}, {id:"minecraft:attack_damage",base:17}]}

execute at @e[tag=magic_irongolem_t2,limit=1,sort=nearest] run particle minecraft:flash{color:[1.000,0.840,0.000,1.00]} ~ ~1 ~ 0 0 0 1 0 normal
execute at @e[tag=magic_irongolem_t2,limit=1,sort=nearest] run particle minecraft:cloud ~ ~0.5 ~ 0.6 0.8 0.6 0.1 40 force
execute at @e[tag=magic_irongolem_t2,limit=1,sort=nearest] run particle minecraft:dust{color:[1.000,0.840,0.000],scale:1.0} ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force

scoreboard players reset @s magic_wand.charge
