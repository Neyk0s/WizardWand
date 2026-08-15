# 1. Son de lancer
playsound entity.lingering_potion.throw master @a ~ ~ ~ 0.8 1.0 0.8

execute at @s run playsound entity.puffer_fish.blow_up master @a ~ ~ ~ 1.5 0.5

execute at @s run particle minecraft:poof ~ ~2 ~ 1 2 1 0.1 200 force

# 2. Buff
attribute @s minecraft:scale base set 0.25

attribute @s minecraft:safe_fall_distance base set 16
attribute @s minecraft:movement_speed base set 0.25

# 3. Reset charge du bâton
scoreboard players reset @s magic_wand.charge
scoreboard players set @s small_timer 150