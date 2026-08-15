# 1. VISUEL : Le trait mauve (Uniquement pour les ancres T1)
execute at @e[tag=anchor_t1] run particle minecraft:portal ~ ~1 ~ 0.1 1 0.1 0.01 5

# 2. DÉTECTION DE LA PERLE
execute as @e[tag=anchor_t1,scores={tp_back_timer=-1}] run scoreboard players set @s found_pearl 0

# Chaque perle T1 cherche son ancre anchor_t1 correspondante
execute as @e[tag=magic_pearl_t1] at @s as @e[tag=anchor_t1,distance=..500,scores={tp_back_timer=-1}] if score @s id = @e[tag=magic_pearl_t1,limit=1,sort=nearest,distance=..0.1] id run scoreboard players set @s found_pearl 1

# 3. GESTION DU TIMER (Sur l'ancre T1)
execute as @e[tag=anchor_t1,scores={tp_back_timer=-1}] run scoreboard players add @s grace_period 1

# Déclenchement du timer T1 (Sans l'explosion du T2)
execute as @e[tag=anchor_t1,scores={tp_back_timer=-1,grace_period=10..,found_pearl=0}] run scoreboard players set @s tp_back_timer 60

# 4. DÉCOMPTE
execute as @e[tag=anchor_t1,scores={tp_back_timer=1..}] run scoreboard players remove @s tp_back_timer 1

# 5. TÉLÉPORTATION (Appelle la fonction de retour T1)
execute as @e[tag=anchor_t1,scores={tp_back_timer=0}] at @s run function wizardwand:teleportwand/teleport_back_t1