execute at @e[tag=ice_particule_t1] run particle minecraft:cloud ~ ~ ~ 1.0 1.0 1.0 0.01 40 force

execute at @e[tag=ice_particule_t1] run particle minecraft:snowflake ~ ~ ~ 1.5 1.5 1.5 0.01 30 force

execute at @e[tag=ice_particule_t2] run particle minecraft:end_rod ^ ^ ^-0.5 0.1 0.1 0.1 0.02 5 force
execute at @e[tag=ice_particule_t2] run particle minecraft:item{item:"minecraft:blue_ice"} ~ ~ ~ 0.2 0.2 0.2 0.05 5 force

execute at @e[tag=ice_particule_t3] run particle minecraft:snowflake ~ ~ ~ 1.2 0.1 1.2 0.1 20 force
execute at @e[tag=ice_particule_t3] run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.02 5 force

execute at @e[tag=ice_projectile_t3] run particle minecraft:dust{color:[0.0,0.5,1.0],scale:1.5} ~ ~ ~ 0.8 0.8 0.8 0 15 force
