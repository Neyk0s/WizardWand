# 1. Identifier les cibles (exclure les joueurs avec le tag ice_protect)
execute at @s run tag @e[distance=..9,type=!player,type=!minecraft:item,type=!minecraft:experience_orb] add ice_hit
execute at @s run tag @e[distance=..9,type=player,tag=!ice_protect] add ice_hit

# 2. Supprimer la boule de neige
kill @e[tag=ice_projectile_t3,distance=..2.5,limit=1]

execute at @s run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 1 force

execute at @s run particle minecraft:item{item:"minecraft:blue_ice"} ~ ~ ~ 2 2 2 0.5 200 force

execute at @s run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 2 0.5

execute as @e[tag=ice_hit] run effect give @s slowness 5 3
execute as @e[tag=ice_hit] run damage @s 20 freeze

tag @e[tag=ice_hit] remove ice_hit