# Tier 1
execute if entity @s[tag=breeze_trail_t1] run particle minecraft:small_gust ~ ~ ~ 0.01 0.01 0.01 0.01 1 force

# Tier 2
execute if entity @s[tag=breeze_trail_t2] run particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
execute if entity @s[tag=storm_trail_t2] run particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.01 1 force

# Tier 3
execute if entity @s[tag=breeze_trail_t3] run particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0.1 20 force
execute if entity @s[tag=breeze_trail_t3] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.02 2 force
execute if entity @s[tag=breeze_trail_t3] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.01 5 force

# Effet "aggripant" à la charge
execute as @e[tag=breeze_trail_t3] at @s run tp @e[type=!player,distance=0.1..8,limit=5] ^ ^ ^-0.5 facing entity @s

execute as @e[tag=breeze_trail_gamble] at @s run tp @e[type=!player,distance=0.1..12,limit=10] ^ ^ ^-0.5 facing entity @s