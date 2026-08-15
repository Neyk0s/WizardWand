playsound entity.wolf.growl master @a ~ ~ ~ 0.8 1.2 0.8

# On donne un tag new summon pour éviter de voler les chiens déjà invoquer des autres joueurs + gérer les soins de la max health
summon wolf ^ ^2 ^2 {Tags:["magic_wolf_t1","new_summon"],variant:"minecraft:rusty",Tame:1,DeathLootTable:"minecraft:empty",Glowing:1}

execute at @s run data modify entity @e[tag=new_summon,limit=1,sort=nearest] Owner set from entity @s UUID

# Particules
execute at @e[tag=magic_wolf_t1,tag=new_summon,limit=1,sort=nearest] run particle minecraft:flash{color:[0.3, 0.8, 0.1, 1.0]} ~ ~1 ~ 0 0 0 1 0 normal
execute at @e[tag=magic_wolf_t1,tag=new_summon,limit=1,sort=nearest] run particle minecraft:spore_blossom_air ~ ~1 ~ 0.8 1.0 0.8 0.05 60 force
execute at @e[tag=magic_wolf_t1,tag=new_summon,limit=1,sort=nearest] run particle minecraft:dust{color:[0.39, 0.23, 0.11], scale:1.2} ~ ~0.5 ~ 0.5 0.5 0.5 0.1 25 force
execute at @e[tag=magic_wolf_t1,tag=new_summon,limit=1,sort=nearest] run particle minecraft:dust{color:[0.19, 0.47, 0.15], scale:1.0} ~ ~1.2 ~ 0.6 0.6 0.6 0.1 20 force

tag @e[tag=new_summon,tag=magic_wolf_t1] remove new_summon

scoreboard players reset @s magic_wand.charge
