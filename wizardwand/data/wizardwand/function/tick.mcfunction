# Calcul la direction des projectiles
execute as @e[tag=motion_projectile,tag=!fast,tag=!motion_added] at @s rotated as @p run function wizardwand:apply_motion_medium
execute as @e[tag=motion_projectile,tag=fast,tag=!motion_added] at @s rotated as @p run function wizardwand:apply_motion_fast

#Jouer les effets des bâtons
execute as @e[tag=motion_projectile] at @s run function wizardwand:breezewand/particles
execute as @e[tag=motion_projectile] at @s run function wizardwand:firewand/particles
execute as @e[tag=motion_projectile] at @s run function wizardwand:witherwand/particles
function wizardwand:buffwand/particles
function wizardwand:miningwand/particles

# Incrémenter le timer pour chaque projectile
execute as @e[tag=motion_projectile] run scoreboard players add @s projectile_life_time 1

# Suppression projectile après 80 ticks de vie
execute as @e[tag=motion_projectile,scores={projectile_life_time=80..}] run kill @s

# Gestion ice
function wizardwand:icewand/manage_behaviour_ice_wand

# Gestion golem de neige
function wizardwand:snowwand/manage_behaviour_snow_golem

# Gestion vie golem
function wizardwand:ironwand/manage_behaviour_iron_golem

# Gestion vie loup
function wizardwand:alphawand/manage_behaviour_wolf

# Gestion shot blaze
function wizardwand:blazewand/manage_behaviour_blaze_wand

# Gestion shot blaze enchant
function wizardwand:enchantment/wizard/manage_behaviour_blaze_shot

# Gestion dragon
function wizardwand:dragonwand/manage_behaviour_dragon_wand
function wizardwand:dragonwand/gamble/manage_gamble_behaviour_dragon_wand

# Gestion éclairs
function wizardwand:lightningwand/manage_behaviour_lightning

# Gestion tp
function wizardwand:teleportwand/teleport_back_t1_tick
function wizardwand:teleportwand/teleport_back_t2_tick

# Gestion tailles
function wizardwand:giantwand/manage_giant_size_lifetime
function wizardwand:smallwand/manage_small_size_lifetime

# Gestion affichage gamble
execute as @a[scores={gamble_freeze=1..}] run scoreboard players remove @s gamble_freeze 1

# Gestion enchantement rogue
execute as @a run function wizardwand:enchantment/rogue/manage_enchant_behaviour

# Gestion enchantement warrior
execute as @a run function wizardwand:enchantment/warrior/manage_enchant_behaviour



# Gestion lich king
function wizardwand:lichking/manage_boss_bar
function wizardwand:lichking/manage_death_effect


# Gestion sort lancer par le lichking
execute as @e[tag=lich_king] run scoreboard players add @s lich_attack_timer 1

# Selectionne une attaque au hasard
execute as @e[tag=lich_king,scores={lich_attack_timer=120}] store result score @s lich_attack_choice run random value 1..4

# Cible le joueur le plus proche
execute as @e[tag=lich_king,scores={lich_attack_timer=120}] run tag @p[sort=nearest,limit=1] add aimed_by_lich_king
# Invoque un marqueur sur le joueur ciblé
execute as @e[tag=lich_king,scores={lich_attack_timer=120}] at @a[tag=aimed_by_lich_king,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["lich_target_zone"]}

# On copie le choix du boss sur le marqueur qui vient de spawn
execute as @e[tag=lich_king,scores={lich_attack_timer=120}] run scoreboard players operation @e[tag=lich_target_zone,sort=nearest,limit=1] lich_attack_choice = @s lich_attack_choice

# Gestion des effets pour la zone ciblé + lance l'attaque choisi après 60 tick (géré par aim.mcfunction)
execute as @e[tag=lich_target_zone] at @s run function wizardwand:lichking/attack/aim

# Clean des sbires à la mort du roi liche
execute unless entity @e[tag=lich_king] as @e[tag=lich_minion] run kill @s

# Protection du roi liche face au debuff
effect clear @e[tag=lich_king] minecraft:slowness
effect clear @e[tag=lich_king] minecraft:weakness
effect clear @e[tag=lich_king] minecraft:wither
execute as @e[tag=lich_king] run data modify entity @s Fire set value 0s

# --- PHASE 2  ---

execute as @e[tag=lich_king] store result score @s lich_current run data get entity @s Health

execute as @e[tag=lich_king,tag=!lich_hp_init] store result score @s lich_max run attribute @s minecraft:max_health base get
execute as @e[tag=lich_king,tag=!lich_hp_init] run scoreboard players operation @s lich_threshold = @s lich_max
execute as @e[tag=lich_king,tag=!lich_hp_init] run scoreboard players set #75 lich_hp 75
execute as @e[tag=lich_king,tag=!lich_hp_init] run scoreboard players operation @s lich_threshold *= #75 lich_hp
execute as @e[tag=lich_king,tag=!lich_hp_init] run scoreboard players set #100 lich_hp 100
execute as @e[tag=lich_king,tag=!lich_hp_init] run scoreboard players operation @s lich_threshold /= #100 lich_hp
execute as @e[tag=lich_king,tag=!lich_hp_init] run tag @s add lich_hp_init

execute as @e[tag=lich_king,tag=!triggered_cavaliers] if score @s lich_current < @s lich_threshold at @s run function wizardwand:lichking/attack/summon_cavaliers

# --- PHASE 3  ---

execute as @e[tag=lich_king,tag=!lich_hp_50_init] store result score @s lich_th_50 run attribute @s minecraft:max_health base get
execute as @e[tag=lich_king,tag=!lich_hp_50_init] run scoreboard players set #50 lich_hp 50
execute as @e[tag=lich_king,tag=!lich_hp_50_init] run scoreboard players operation @s lich_th_50 *= #50 lich_hp
execute as @e[tag=lich_king,tag=!lich_hp_50_init] run scoreboard players set #100 lich_hp 100
execute as @e[tag=lich_king,tag=!lich_hp_50_init] run scoreboard players operation @s lich_th_50 /= #100 lich_hp
execute as @e[tag=lich_king,tag=!lich_hp_50_init] run tag @s add lich_hp_50_init

execute as @e[tag=lich_king,tag=!triggered_giant] if score @s lich_current < @s lich_th_50 at @s run function wizardwand:lichking/attack/summon_giant

# --- PHASE 4  ---

# 1. Initialisation du seuil des 25% (Se fait une seule fois au spawn du boss)
execute as @e[tag=lich_king,tag=!lich_hp_25_init] store result score @s lich_th_25 run attribute @s minecraft:max_health base get
execute as @e[tag=lich_king,tag=!lich_hp_25_init] run scoreboard players set #25 lich_hp 25
execute as @e[tag=lich_king,tag=!lich_hp_25_init] run scoreboard players operation @s lich_th_25 *= #25 lich_hp
execute as @e[tag=lich_king,tag=!lich_hp_25_init] run scoreboard players set #100 lich_hp 100
execute as @e[tag=lich_king,tag=!lich_hp_25_init] run scoreboard players operation @s lich_th_25 /= #100 lich_hp
execute as @e[tag=lich_king,tag=!lich_hp_25_init] run tag @s add lich_hp_25_init

# 2. Déclenchement de la Rage (Vérification UNIQUE pour donner le tag lich_enraged)
execute as @e[tag=lich_king,tag=!lich_enraged] if score @s lich_current < @s lich_th_25 at @s run function wizardwand:lichking/attack/enrage

# Permanent buffs for last phase
execute as @e[tag=lich_enraged] run effect give @s minecraft:strength 2 0 true
execute as @e[tag=lich_enraged] run effect give @s minecraft:resistance 2 0 true

# Aura visuelle : Nuage d'âmes mystiques qui monte autour du boss
# Aura visuelle adaptée au boss géant (250% de taille)
execute at @e[tag=lich_enraged] run particle minecraft:soul ~ ~2.5 ~ 0.8 2.0 0.8 0.02 10 force