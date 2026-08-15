
scoreboard players set @s warrior_streak 0

execute if predicate wizardwand:is_warrior_enchanted_1 run scoreboard players set @s warrior_timer 100
execute if predicate wizardwand:is_warrior_enchanted_2 run scoreboard players set @s warrior_timer 140
execute if predicate wizardwand:is_warrior_enchanted_3 run scoreboard players set @s warrior_timer 160

# Level 1
execute if predicate wizardwand:is_warrior_enchanted_1 run attribute @s minecraft:attack_damage base set 5.0
execute if predicate wizardwand:is_warrior_enchanted_1 run attribute @s minecraft:attack_speed base set 6.0

execute if predicate wizardwand:is_warrior_enchanted_1 run attribute @s minecraft:armor base set 2.0

execute if predicate wizardwand:is_warrior_enchanted_1 run attribute @s minecraft:explosion_knockback_resistance base set 1
execute if predicate wizardwand:is_warrior_enchanted_1 run attribute @s minecraft:block_interaction_range base set 5.0

execute if predicate wizardwand:is_warrior_enchanted_1 run attribute @s minecraft:movement_speed base set 0.12

# Level 2
execute if predicate wizardwand:is_warrior_enchanted_2 run attribute @s minecraft:attack_damage base set 7.5
execute if predicate wizardwand:is_warrior_enchanted_2 run attribute @s minecraft:attack_speed base set 8.0

execute if predicate wizardwand:is_warrior_enchanted_2 run attribute @s minecraft:armor base set 4.0

execute if predicate wizardwand:is_warrior_enchanted_2 run attribute @s minecraft:explosion_knockback_resistance base set 1.5
execute if predicate wizardwand:is_warrior_enchanted_2 run attribute @s minecraft:block_interaction_range base set 5.5

execute if predicate wizardwand:is_warrior_enchanted_2 run attribute @s minecraft:movement_speed base set 0.14


# Level 3
execute if predicate wizardwand:is_warrior_enchanted_3 run attribute @s minecraft:attack_damage base set 10.0
execute if predicate wizardwand:is_warrior_enchanted_3 run attribute @s minecraft:attack_speed base set 10.0

execute if predicate wizardwand:is_warrior_enchanted_3 run attribute @s minecraft:armor base set 6.0

execute if predicate wizardwand:is_warrior_enchanted_3 run attribute @s minecraft:explosion_knockback_resistance base set 2.0
execute if predicate wizardwand:is_warrior_enchanted_3 run attribute @s minecraft:block_interaction_range base set 6.0

execute if predicate wizardwand:is_warrior_enchanted_3 run attribute @s minecraft:movement_speed base set 0.16

title @s actionbar {"text":"⚔ MODE RAGE ⚔","color":"red","bold":true}
execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.1 10
# Des petites flammes qui montent du sol
execute at @s run particle minecraft:flame ~ ~0.2 ~ 0.3 0.8 0.3 0.02 15

# De la fumée noire pour le côté sombre/guerrier
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.8 0.3 0.01 10

execute at @s run playsound minecraft:entity.ravager.roar player @a ~ ~ ~ 1 0.6