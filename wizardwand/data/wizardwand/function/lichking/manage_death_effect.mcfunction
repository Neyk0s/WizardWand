# Check health
execute as @e[tag=lich_king,limit=1] store result score @s lich_death_timer run data get entity @s Health

# Death effect + ensure death
execute at @e[tag=lich_king,scores={lich_death_timer=..1}] run particle minecraft:dust{color:[0.3,0.65,1.0],scale:2.5} ~ ~2.5 ~ 0.8 1.2 0.8 0.1 150
execute as @e[tag=lich_king,scores={lich_death_timer=..1},limit=1] run kill @s