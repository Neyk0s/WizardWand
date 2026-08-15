# Display
execute if entity @e[tag=lich_king,limit=1] run bossbar set minecraft:lich_king_bar players @a
execute unless entity @e[tag=lich_king,limit=1] run bossbar set minecraft:lich_king_bar players

# Synchrnonize actual heatlh
execute as @e[tag=lich_king,limit=1] store result bossbar minecraft:lich_king_bar value run data get entity @s Health

# Synchronize max health
execute as @e[tag=lich_king,limit=1] store result bossbar minecraft:lich_king_bar max run attribute @s minecraft:max_health get