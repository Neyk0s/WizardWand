execute if entity @s[tag=wither_trail] run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.02 5 force
execute if entity @s[tag=wither_trail] run particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
execute if entity @s[tag=wither_trail] run particle minecraft:dust{color:[0.000,0.000,0.000],scale:1.0} ~ ~ ~ 0.1 0.1 0.1 0 10 force

execute if entity @s[tag=wither_trail_t3] run particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.01 3 force
execute if entity @s[tag=wither_trail_t3] run particle minecraft:electric_spark ~ ~ ~ 0.3 0.3 0.3 0.1 2 force
execute if entity @s[tag=wither_trail_t3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.05 5 force