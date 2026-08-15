# 1. VISUEL : Le trait mauve constant pour T2
execute at @e[tag=anchor_t2] run particle minecraft:portal ~ ~1 ~ 0.1 1 0.1 0.01 5

# 2. DÉTECTION DE LA PERLE
execute as @e[tag=anchor_t2,scores={tp_back_timer=-1}] run scoreboard players set @s found_pearl 0
execute as @e[tag=magic_pearl_t2] at @s as @e[tag=anchor_t2,scores={tp_back_timer=-1}] if score @s id = @e[tag=magic_pearl_t2,limit=1,sort=nearest,distance=..0.1] id run scoreboard players set @s found_pearl 1

# 3. GESTION DU TIMER ET IMPACT DU CREEPER (Exclusif T2)
execute as @e[tag=anchor_t2,scores={tp_back_timer=-1}] run scoreboard players add @s grace_period 1

# --- IMPACT T2 ---
execute as @e[tag=anchor_t2,scores={tp_back_timer=-1,grace_period=10..,found_pearl=0}] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:3b,ActiveEffects:[{Id:14,Amplifier:0,Duration:10,ShowParticles:0b}],Invulnerable:1b,CustomName:'{"text":"MagicExplosion"}'}
execute as @e[tag=anchor_t2,scores={tp_back_timer=-1,grace_period=10..,found_pearl=0}] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 50

# Transition du score
execute as @e[tag=anchor_t2,scores={tp_back_timer=-1,grace_period=10..,found_pearl=0}] run scoreboard players set @s tp_back_timer 60

# 4. DÉCOMPTE
execute as @e[tag=anchor_t2,scores={tp_back_timer=1..}] run scoreboard players remove @s tp_back_timer 1

# 5. TÉLÉPORTATION FINALE T2
execute as @e[tag=anchor_t2,scores={tp_back_timer=0}] at @s run function wizardwand:teleportwand/teleport_back_t2