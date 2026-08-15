
# --- DÉTECTION DE L'EXPLOSION ---
# On marque le tracker comme "volant" tant qu'il touche une boule de feu
execute as @e[type=marker,tag=bh_tracker] at @s if entity @e[type=dragon_fireball,distance=..1] run tag @s add flying
execute as @e[type=marker,tag=bh_tracker] at @s unless entity @e[type=dragon_fireball,distance=..1] run tag @s remove flying

# Transition : Si la boule disparaît, le tracker devient un trou noir ("black_hole")
execute as @e[type=marker,tag=bh_tracker,tag=!flying] run tag @s add black_hole
execute as @e[type=marker,tag=black_hole] run tag @s remove bh_tracker

# --- LOGIQUE DU TROU NOIR (8 SECONDES) ---
# 1. Avancement du chronomètre
scoreboard players add @e[type=marker,tag=black_hole] bh_timer 1

# 2. Effet d'attraction sur les MOBS (TP constant au centre)
execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s run tp @e[distance=..8,type=!player,type=!marker,type=!item] ~ ~ ~

# 3. Effet de pesanteur sur les JOUEURS (Slowness IV)
# Les joueurs ne sont pas TP mais sont extrêmement ralentis dans la zone de 8 blocs.
execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s run effect give @a[distance=..8] minecraft:slowness 1 8 true
execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s run effect give @a[distance=..8] minecraft:blindness 2 3 true

# 4. Dégâts magiques sur TOUS les mobs dans la zone
execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s as @e[distance=..8,type=!marker,type=!item] at @s run damage @s 2 minecraft:magic

# 5. Particules visuelles du vortex

execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s run particle minecraft:dust{color:[0.0,0.0,0.0],scale:2.0} ~ ~ ~ 0.3 0.3 0.3 0 80

execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s run particle minecraft:squid_ink ~ ~ ~ 0.5 0.5 0.5 0.05 20
# --- 5. Particules visuelles du vortex ---

# FLASH BLANC/GRIS (Le cœur du trou noir)
# On utilise un blanc légèrement grisé [0.8, 0.8, 0.8] pour l'aspect "énergie instable"
execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s run particle minecraft:flash{color:[0.800,0.800,0.800,1.00]} ~ ~ ~ 0 0 0 0 1 normal

# Ton vortex noir existant
execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s run particle minecraft:dust{color:[0,0,0],scale:2.0} ~ ~ ~ 0.3 0.3 0.3 0 80 force
execute as @e[type=marker,tag=black_hole,scores={bh_timer=1..160}] at @s run particle minecraft:squid_ink ~ ~ ~ 0.5 0.5 0.5 0.05 20 force

# --- PHASE FINALE : INSTABILITÉ ÉLECTRIQUE (Ticks 150 à 160) ---
# Éclairs + Explosions visuelles + Sons de détonation
execute as @e[type=marker,tag=black_hole,scores={bh_timer=150..160}] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=marker,tag=black_hole,scores={bh_timer=150..160}] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 0 5
execute as @e[type=marker,tag=black_hole,scores={bh_timer=150..160}] at @s as @e[distance=..8,type=!marker,type=!item] at @s run damage @s 6 minecraft:magic
execute as @e[type=marker,tag=black_hole,scores={bh_timer=150..160}] at @s run playsound entity.generic.explode ambient @a ~ ~ ~ 0.5 1.2

# --- NETTOYAGE (Tick 160+) ---
# On supprime le nuage de l'Ender Dragon pour faire place nette
execute as @e[type=marker,tag=black_hole,scores={bh_timer=160}] at @s run kill @e[type=area_effect_cloud,distance=..4]

# Grosse particule d'explosion finale (Emitter)
execute as @e[type=marker,tag=black_hole,scores={bh_timer=160}] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1
# Dans la section NETTOYAGE (Tick 160)
execute as @e[type=marker,tag=black_hole,scores={bh_timer=160}] at @s run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

# Suppression définitive du marqueur
kill @e[type=marker,tag=black_hole,scores={bh_timer=161..}]