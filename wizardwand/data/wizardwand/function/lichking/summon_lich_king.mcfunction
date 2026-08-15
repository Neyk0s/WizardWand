# Clean head
setblock ~ ~ ~ air

# clean body and legs
setblock ~ ~-1 ~ air
setblock ~ ~-2 ~ air

# clean arms
setblock ~1 ~-1 ~ air
setblock ~-1 ~-1 ~ air
setblock ~ ~-1 ~1 air
setblock ~ ~-1 ~-1 air

# Summonn
summon drowned ~ ~ ~ {Tags:["lich_king"], attributes:[{id:"minecraft:max_health",base:600}],DeathLootTable:"wizardwand:lichking/loot",equipment:{mainhand:{id:"minecraft:netherite_axe",count:1},feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:trim":{pattern:"minecraft:sentry",material:"minecraft:diamond"}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:trim":{pattern:"minecraft:tide",material:"minecraft:diamond"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{pattern:"minecraft:rib",material:"minecraft:diamond"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjg4YTk3MWQzN2I0ODQ3YzY3ZWM1ZGJhYzhjYzU5NTI0MTRlYzg0MjRmYWNlN2RkNmFjNjdkMDQ5NDQ5N2Y1YiJ9fX0="}]}}}}}

# Apply stats
attribute @e[tag=lich_king,limit=1] minecraft:scale base set 2.5
attribute @e[tag=lich_king,limit=1] minecraft:movement_speed base set 0.299
attribute @e[tag=lich_king,limit=1] minecraft:jump_strength base set 3
attribute @e[tag=lich_king,limit=1] minecraft:step_height base set 3
attribute @e[tag=lich_king,limit=1] minecraft:explosion_knockback_resistance base set 0.5
attribute @e[tag=lich_king,limit=1] minecraft:block_interaction_range base set 18
attribute @e[tag=lich_king,limit=1] minecraft:entity_interaction_range base set 18
attribute @e[tag=lich_king,limit=1] minecraft:safe_fall_distance base set 12

# FX
particle item{item:"minecraft:diamond_block"} ~ ~ ~ 0.5 0.5 0.5 0.1 50 force
playsound entity.iron_golem.summon master @a ~ ~ ~ 1 1