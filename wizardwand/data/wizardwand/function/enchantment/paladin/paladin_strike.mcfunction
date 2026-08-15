execute as @a if predicate wizardwand:is_paladin_enchanted_1 run execute store result score @s paladinStrikeRng run random value 0..3
execute as @a if predicate wizardwand:is_paladin_enchanted_2 run execute store result score @s paladinStrikeRng run random value 0..2
execute as @a if predicate wizardwand:is_paladin_enchanted_3 run scoreboard players set @s paladinStrikeRng 0

execute if score @p paladinStrikeRng matches 0 run function wizardwand:enchantment/paladin/paladin_strike_effects


