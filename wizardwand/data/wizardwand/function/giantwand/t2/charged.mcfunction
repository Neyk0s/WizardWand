# 1. Son de lancer
execute at @s run playsound entity.puffer_fish.blow_up master @a ~ ~ ~ 1.5 0.5

execute at @s run particle minecraft:poof ~ ~2 ~ 1 2 1 0.1 200 force


# 2. Buff
attribute @s minecraft:scale base set 6

attribute @s minecraft:jump_strength base set 2

attribute @s minecraft:step_height base set 5

attribute @s minecraft:explosion_knockback_resistance base set 1

attribute @s minecraft:block_interaction_range base set 27
attribute @s minecraft:entity_interaction_range base set 27

attribute @s minecraft:safe_fall_distance base set 18
attribute @s minecraft:movement_speed base set 0.08

effect give @s minecraft:absorption 5 8 true

# 3. Reset charge du bâton
scoreboard players reset @s magic_wand.charge
scoreboard players set @s giant_timer 200