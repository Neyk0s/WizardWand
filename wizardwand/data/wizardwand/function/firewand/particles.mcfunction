# Tier 1
execute if entity @s[tag=fire_trail_t1] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.02 3 force

# Tier 2
execute at @e[tag=fire_trail_t2] run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0.1 2 force

execute at @e[tag=fire_trail_t2] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 5 force

execute at @e[tag=fire_trail_t2] run particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.02 2 force

# T3
execute at @e[tag=fire_trail_t3] run particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0.01 8 force
execute at @e[tag=fire_trail_t3] run particle minecraft:gust ~ ~ ~ 0.1 0.1 0.1 0.02 2 force

execute at @e[tag=fire_trail_t3] run particle minecraft:dust{color:[0,0,0],scale:1.8} ~ ~ ~ 0.1 0.1 0.1 0 5 force

execute at @e[tag=fire_trail_t3] run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 2 force

execute at @e[tag=fire_trail_t3] run particle minecraft:falling_lava ~ ~ ~ 0.4 0.4 0.4 0 3 force