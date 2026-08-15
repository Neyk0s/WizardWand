# FX
particle minecraft:soul ~ ~1 ~ 1 0.5 1 0.1 80
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 0.7

summon minecraft:stray ~-2 ~ ~ {Tags:["lich_minion"],equipment:{mainhand:{id:"minecraft:bow",count:1},feet:{id:"minecraft:iron_boots",count:1},legs:{id:"minecraft:iron_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:iron_helmet",count:1}}}

summon minecraft:bogged ~2 ~ ~ {Tags:["lich_minion"],equipment:{mainhand:{id:"minecraft:bow",count:1},feet:{id:"minecraft:iron_boots",count:1},legs:{id:"minecraft:iron_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:iron_helmet",count:1}}}

summon minecraft:zombie ~ ~ ~2 {Tags:["lich_minion"],equipment:{mainhand:{id:"minecraft:diamond_spear",count:1},feet:{id:"minecraft:iron_boots",count:1},legs:{id:"minecraft:iron_leggings",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:iron_helmet",count:1}}}

# Clean up target
tag @a[tag=aimed_by_lich_king,distance=..32] remove aimed_by_lich_king

# Cooldown for next attack
scoreboard players set @e[tag=lich_king] lich_attack_timer 0

# Kill marker
kill @s