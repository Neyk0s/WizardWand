# Tier 1
execute at @e[tag=blaze_trail_t1] run particle minecraft:flame ~ ~ ~ 0.02 0.02 0.02 0.01 2 normal
execute at @e[tag=blaze_trail_t1] run particle minecraft:small_flame ~ ~ ~ 0.02 0.02 0.02 0.01 1 normal

execute at @e[tag=blaze_trail_t1] run particle minecraft:smoke ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal

# Tier 2
# 1. On garde l'éclat de lave, mais on met la vitesse à 0 pour qu'il ne saute pas aux yeux
execute at @e[tag=blaze_trail_t2] run particle minecraft:lava ~ ~ ~ 0 0 0 0 1 normal

# 2. On garde le glow (très discret, juste un point lumineux)
execute at @e[tag=blaze_trail_t2] run particle minecraft:glow ~ ~ ~ 0 0 0 0 1 normal

# 3. On réduit les flammes à 1 seule petite particule
execute at @e[tag=blaze_trail_t2] run particle minecraft:small_flame ~ ~ ~ 0 0 0 0 1 normal

# Tier 3
# 1. Un sillage de particules de "vent" (très fin et blanc/jaune)
execute at @e[tag=blaze_trail_t3] run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 normal

# 2. Les micro-étincelles de puissance (Sculk Pop pour le côté "high-tech")
execute at @e[tag=blaze_trail_t3] run particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 0 1 normal

# 3. Le point de focus (End Rod pour stabiliser la vision du projectile)
execute at @e[tag=blaze_trail_t3] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 normal