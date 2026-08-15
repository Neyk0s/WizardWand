playsound entity.lingering_potion.throw master @a ~ ~ ~ 0.8 1.0 0.8

execute at @s run playsound entity.puffer_fish.blow_up master @a ~ ~ ~ 1.5 0.5

execute at @s run particle minecraft:poof ~ ~2 ~ 1 2 1 0.1 200 force


attribute @s minecraft:scale base set 0.15

attribute @s minecraft:safe_fall_distance base set 21
attribute @s minecraft:movement_speed base set 0.3


scoreboard players reset @s magic_wand.charge
scoreboard players set @s small_timer 200