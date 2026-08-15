# 1. Identifier les cibles (exclure les joueurs avec le tag ice_protect)
execute at @s run tag @e[distance=..9,type=!player,type=!minecraft:item,type=!minecraft:experience_orb] add ice_hit
execute at @s run tag @e[distance=..9,type=player,tag=!ice_protect] add ice_hit

# 2. Supprimer la boule de neige
kill @e[tag=ice_projectile_t1,distance=..2.5,limit=1]

# 3. Visuels simples (uniquement des particules de base sans options)
particle snowflake ~ ~1 ~ 1 1 1 0.1 100
particle poof ~ ~1 ~ 1 1 1 0.1 50
execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1.5

# 2. Pluie d'éclats de glace (Blue Ice)
execute at @s run particle minecraft:item{item:"minecraft:blue_ice"} ~ ~ ~ 2 2 2 0.5 200 force

# 4. Appliquer les effets
execute as @e[tag=ice_hit] run effect give @s slowness 5 1
execute as @e[tag=ice_hit] run damage @s 6 freeze

tag @e[tag=ice_hit] remove ice_hit