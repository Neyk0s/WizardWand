# --- DÉTECTION DE L'EXPLOSION ---
execute as @e[type=marker,tag=bh_gamble_tracker] at @s if entity @e[type=dragon_fireball,distance=..1] run tag @s add flying
execute as @e[type=marker,tag=bh_gamble_tracker] at @s unless entity @e[type=dragon_fireball,distance=..1] run tag @s remove flying

execute as @e[type=marker,tag=bh_gamble_tracker,tag=!flying] run tag @s add black_hole_gamble
execute as @e[type=marker,tag=black_hole_gamble] run tag @s remove bh_gamble_tracker

# --- LOGIQUE DU TROU NOIR (8 SECONDES) ---
scoreboard players add @e[type=marker,tag=black_hole_gamble] bh_timer 1

# 1. ZONE MAUVE (Rayon 10.0 blocs)
execute as @e[type=marker,tag=black_hole_gamble] at @s run data merge entity @e[type=area_effect_cloud,distance=..4,limit=1] {Radius:10.0f,Duration:160}

# 2. LA BOULE NOIRE CENTRALE (Position ~ ~0.5)
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=1..160}] at @s run particle minecraft:dust{color:[0.0,0.0,0.0],scale:4.0} ~ ~0.5 ~ 0.2 0.2 0.2 0 100 force

# 3. EFFET D'ATTRACTION (Rayon 25 blocs - On garde l'aspiration large)
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=1..160}] at @s run tp @e[distance=..25,type=!player,type=!marker,type=!item] ~ ~ ~

# 4. EFFETS SUR LES JOUEURS (Ajustés à la zone mauve)
# Le ralentissement (Slowness) "épouse" maintenant la fumée mauve (10 blocs)
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=1..160}] at @s run effect give @a[distance=..10] minecraft:slowness 1 8 true
# L'aveuglement reste pour les joueurs très proches (8 blocs)
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=1..160}] at @s run effect give @a[distance=..8] minecraft:blindness 2 0 true

# 5. DÉGÂTS MAGIQUES (Rayon 10 blocs pour être cohérent avec la zone visuelle)
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=1..160}] at @s as @e[distance=..10,type=!marker,type=!item] at @s run damage @s 4 minecraft:magic

# 6. FLASH D'ÉNERGIE
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=1..160}] at @s run particle minecraft:flash{color:[0.8,0.8,0.8,1.0]} ~ ~0.5 ~ 0 0 0 0 1 normal

# --- PHASE FINALE : INSTABILITÉ ÉLECTRIQUE (Ticks 150 à 160) ---
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=150..160}] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=150..160}] at @s run particle minecraft:explosion ~ ~0.5 ~ 4 4 4 0 10
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=150..160}] at @s run playsound entity.generic.explode ambient @a ~ ~ ~ 1 0.8

# --- NETTOYAGE (Tick 160+) ---
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=160}] at @s run kill @e[type=area_effect_cloud,distance=..12]
execute as @e[type=marker,tag=black_hole_gamble,scores={bh_timer=160}] at @s run particle minecraft:explosion_emitter ~ ~0.5 ~ 2 2 2 0 1

# Suppression définitive du marqueur
kill @e[type=marker,tag=black_hole_gamble,scores={bh_timer=161..}]