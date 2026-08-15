# 1. Progression du timer global pour tous les marqueurs
scoreboard players add @e[type=marker,tag=lightning_center] lightning_timer 1

# -------------------------------------------------------------
# 2. VAGUE 1 (Tick 20) : Requis Tier 2, 3 ou 4 (lightning_tier=2..)
# -------------------------------------------------------------
execute as @e[type=marker,tag=lightning_center,scores={lightning_timer=20,lightning_tier=2..}] at @s run function wizardwand:lightningwand/lightning_first_wave

# -------------------------------------------------------------
# 3. VAGUE 2 (Tick 40) : Requis Tier 3 ou 4 (lightning_tier=3..)
# -------------------------------------------------------------
execute as @e[type=marker,tag=lightning_center,scores={lightning_timer=40,lightning_tier=3..}] at @s run function wizardwand:lightningwand/lightning_second_wave

# -------------------------------------------------------------
# 4. VAGUE 3 (Tick 60) : Requis Tier 4 uniquement (lightning_tier=4..)
# -------------------------------------------------------------
execute as @e[type=marker,tag=lightning_center,scores={lightning_timer=60,lightning_tier=4}] at @s run function wizardwand:lightningwand/lightning_third_wave

# -------------------------------------------------------------
# 5. NETTOYAGE INTELLIGENT DES MARQUEURS
# -------------------------------------------------------------
# Tier 2 : Se termine après la Vague 1 (Tick 21)
tag @e[type=marker,tag=lightning_center,scores={lightning_tier=2,lightning_timer=21..}] add marked_for_death

# Tier 3 : Se termine après la Vague 2 (Tick 41)
tag @e[type=marker,tag=lightning_center,scores={lightning_tier=3,lightning_timer=41..}] add marked_for_death

# Tier 4 : Se termine après la Vague 3 (Tick 61)
tag @e[type=marker,tag=lightning_center,scores={lightning_tier=4,lightning_timer=61..}] add marked_for_death

# Destruction sécurisée
kill @e[type=marker,tag=marked_for_death]