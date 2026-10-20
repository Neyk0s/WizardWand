# Tier 1
execute at @e[tag=blaze_trail_t1] run particle minecraft:flame ~ ~ ~ 0.02 0.02 0.02 0.01 2 normal
execute at @e[tag=blaze_trail_t1] run particle minecraft:small_flame ~ ~ ~ 0.02 0.02 0.02 0.01 1 normal
execute at @e[tag=blaze_trail_t1] run particle minecraft:smoke ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal

# Tier 2
execute at @e[tag=blaze_trail_t2] run particle minecraft:lava ~ ~ ~ 0 0 0 0 1 normal
execute at @e[tag=blaze_trail_t2] run particle minecraft:glow ~ ~ ~ 0 0 0 0 1 normal
execute at @e[tag=blaze_trail_t2] run particle minecraft:small_flame ~ ~ ~ 0 0 0 0 1 normal

# Tier 3
execute at @e[tag=blaze_trail_t3] run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 normal
execute at @e[tag=blaze_trail_t3] run particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 0 1 normal
execute at @e[tag=blaze_trail_t3] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 normal