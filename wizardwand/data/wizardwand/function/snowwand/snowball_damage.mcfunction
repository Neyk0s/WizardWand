# Effets visuels
particle minecraft:snowflake ~ ~ ~ 0.4 0.4 0.4 0.06 25 force @a
particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 0.02 12 force @a
playsound minecraft:block.glass.break master @a ~ ~ ~ 0.7 1.3 0.9

# Dégâts + slow
# Dégâts → seulement les entités NON-joueurs
execute positioned ~ ~0.6 ~ run damage @e[distance=..4.5,type=!player,type=!snow_golem,type=!snowball,type=!area_effect_cloud,limit=1,sort=nearest] 4 minecraft:generic

# Slowness → seulement les entités NON-joueurs
execute positioned ~ ~0.6 ~ run effect give @e[distance=..4.5,type=!player,type=!snow_golem,type=!snowball,type=!area_effect_cloud,limit=1,sort=nearest] minecraft:slowness 3 1 true


kill @s