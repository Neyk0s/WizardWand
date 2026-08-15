# 1. Son et compteur global
playsound entity.lingering_potion.throw master @a ~ ~ ~ 0.8 1.0 0.8
scoreboard players add GLOBAL global_id 1

# 2. Invocation de l'ANCRE (On ajoute le tag spécifique anchor_t1)
summon area_effect_cloud ~ ~ ~ {Tags:["tp_anchor","anchor_t1"],Duration:1200,WaitTime:0,Radius:0.0f,Particle:"minecraft:air"}

# On cible uniquement l'ancre anchor_t1 la plus proche pour lui donner son ID et stocker le UUID du joueur
execute as @e[tag=anchor_t1,limit=1,sort=nearest] run scoreboard players operation @s id = GLOBAL global_id
execute as @e[tag=anchor_t1,limit=1,sort=nearest] run data modify entity @s data.owner_uuid set from entity @p UUID
execute as @e[tag=anchor_t1,limit=1,sort=nearest] run scoreboard players set @s tp_back_timer -1
execute as @e[tag=anchor_t1,limit=1,sort=nearest] run scoreboard players set @s grace_period 0

# 3. Invocation de la PERLE
execute at @s run summon ender_pearl ^ ^1.5 ^1.5 {Tags:["magic_pearl_t1", "motion_projectile","fast"]}
execute as @e[tag=magic_pearl_t1,limit=1,sort=nearest] run scoreboard players operation @s id = GLOBAL global_id
execute as @e[tag=magic_pearl_t1,limit=1,sort=nearest] run data modify entity @s Owner set from entity @p UUID

# 4. On marque le joueur avec son ID unique
tag @s add tp_active
scoreboard players operation @s magic_wand.id = GLOBAL global_id
scoreboard players reset @s magic_wand.charge