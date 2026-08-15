# On révoque l'avancement pour la prochaine fois
advancement revoke @s only wizardwand:place_head

# ==========================================
# NIVEAU 0 (La tête est au même niveau que tes pieds)
# ==========================================
execute at @s run function wizardwand:lichking/verify_summon
execute at @s positioned ~1 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-1 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~-1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~2 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-2 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~-2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~3 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-3 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~-3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~4 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-4 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~4 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~-4 run function wizardwand:lichking/verify_summon
execute at @s positioned ~5 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-5 ~ ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~5 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~ ~-5 run function wizardwand:lichking/verify_summon
execute at @s positioned ~2 ~ ~2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~-2 ~ ~-2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~2 ~ ~-2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~-2 ~ ~2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~3 ~ ~3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~-3 ~ ~-3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~4 ~ ~4 run function wizardwand:lichking/verify_summon
execute at @s positioned ~-4 ~ ~-4 run function wizardwand:lichking/verify_summon

# ==========================================
# NIVEAUX +1, +2, +3, +4 (La tête est en hauteur)
# ==========================================
# Couverture Axe Y (Pile au-dessus)
execute at @s positioned ~ ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~3 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~4 ~ run function wizardwand:lichking/verify_summon

# Grille Niveau +1
execute at @s positioned ~1 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-1 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~-1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~2 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-2 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~-2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~3 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-3 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~-3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~4 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-4 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~4 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~-4 run function wizardwand:lichking/verify_summon
execute at @s positioned ~5 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-5 ~1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~5 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~1 ~-5 run function wizardwand:lichking/verify_summon

# Grille Niveau +2
execute at @s positioned ~1 ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-1 ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~-1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~2 ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-2 ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~-2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~3 ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-3 ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~-3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~4 ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-4 ~2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~4 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~2 ~-4 run function wizardwand:lichking/verify_summon

# Grille Niveau +3 (Haut du corps / Limite de saut)
execute at @s positioned ~1 ~3 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-1 ~3 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~3 ~1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~3 ~-1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~2 ~3 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-2 ~3 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~3 ~2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~3 ~-2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~3 ~3 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-3 ~3 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~3 ~3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~3 ~-3 run function wizardwand:lichking/verify_summon

# ==========================================
# NIVEAUX -1 et -2 (Tu es surélevé par rapport à la structure)
# ==========================================
# Couverture Axe Y (Pile en dessous)
execute at @s positioned ~ ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-2 ~ run function wizardwand:lichking/verify_summon

# Grille Niveau -1
execute at @s positioned ~1 ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-1 ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-1 ~1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-1 ~-1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~2 ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-2 ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-1 ~2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-1 ~-2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~3 ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-3 ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-1 ~3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-1 ~-3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~4 ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-4 ~-1 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-1 ~4 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-1 ~-4 run function wizardwand:lichking/verify_summon

# Grille Niveau -2
execute at @s positioned ~1 ~-2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-1 ~-2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-2 ~1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-2 ~-1 run function wizardwand:lichking/verify_summon
execute at @s positioned ~2 ~-2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-2 ~-2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-2 ~2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-2 ~-2 run function wizardwand:lichking/verify_summon
execute at @s positioned ~3 ~-2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~-3 ~-2 ~ run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-2 ~3 run function wizardwand:lichking/verify_summon
execute at @s positioned ~ ~-2 ~-3 run function wizardwand:lichking/verify_summon