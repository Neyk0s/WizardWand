# ======================================================
# Effets visuels (TOUJOURS appliqués à l'impact)
# ======================================================
particle minecraft:snowflake ~ ~ ~ 0.3 0.3 0.3 0.05 20 force @a
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.01 10 force @a

# Son d'impact
playsound minecraft:block.glass.break master @a ~ ~ ~ 0.6 1.2 0.8

# ======================================================
# DÉGÂTS ET EFFETS (seulement si cible valide proche)
# ======================================================

execute if entity @e[type=!snow_golem,type=!snowball,type=!area_effect_cloud,distance=..2.5,limit=1] run function wizardwand:snowwand/snowball_damage

# SUPPRIMER la snowball (TOUJOURS)
kill @s