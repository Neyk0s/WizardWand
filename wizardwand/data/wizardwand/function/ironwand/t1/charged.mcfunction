playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.8 1.2 0.8

summon iron_golem ^ ^3 ^4.5 {Tags:["magic_irongolem_t1"],Health:10f,Silent:1b,DeathLootTable:"minecraft:empty",Glowing:1b}

# Particules
execute at @e[tag=magic_irongolem_t1,limit=1,sort=nearest] run particle minecraft:flash{color:[1.000,0.840,0.000,1.00]} ~ ~1 ~ 0 0 0 1 0 normal
execute at @e[tag=magic_irongolem_t1,limit=1,sort=nearest] run particle minecraft:cloud ~ ~0.5 ~ 0.6 0.8 0.6 0.1 40 force
execute at @e[tag=magic_irongolem_t1,limit=1,sort=nearest] run particle minecraft:dust{color:[1.000,0.840,0.000],scale:1.0} ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force

scoreboard players reset @s magic_wand.charge
