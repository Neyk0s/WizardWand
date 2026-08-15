execute as @p if predicate wizardwand:is_wizard_shot_enchanted_1 run execute store result score @s wizardShotRng run random value 1..15
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_2 run execute store result score @s wizardShotRng run random value 1..10
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_3 run execute store result score @s wizardShotRng run random value 1..6

execute as @p if predicate wizardwand:is_wizard_shot_enchanted_1 if score @p wizardShotRng matches 1 run function wizardwand:enchantment/wizard/t1/fire
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_1 if score @p wizardShotRng matches 2 run function wizardwand:enchantment/wizard/t1/wither
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_1 if score @p wizardShotRng matches 3 run function wizardwand:enchantment/wizard/t1/breeze
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_1 if score @p wizardShotRng matches 4 run function wizardwand:enchantment/wizard/t1/blaze
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_1 if score @p wizardShotRng matches 5 run function wizardwand:enchantment/wizard/shulker

execute as @p if predicate wizardwand:is_wizard_shot_enchanted_2 if score @p wizardShotRng matches 1 run function wizardwand:enchantment/wizard/t2/fire
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_2 if score @p wizardShotRng matches 2 run function wizardwand:enchantment/wizard/t2/wither
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_2 if score @p wizardShotRng matches 3 run function wizardwand:enchantment/wizard/t2/breeze
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_2 if score @p wizardShotRng matches 4 run function wizardwand:enchantment/wizard/t2/blaze
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_2 if score @p wizardShotRng matches 5 run function wizardwand:enchantment/wizard/shulker
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_2 if score @p wizardShotRng matches 6 run function wizardwand:enchantment/wizard/t2/dragon

execute as @p if predicate wizardwand:is_wizard_shot_enchanted_3 if score @p wizardShotRng matches 1 run function wizardwand:enchantment/wizard/t3/fire
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_3 if score @p wizardShotRng matches 2 run function wizardwand:enchantment/wizard/t3/wither
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_3 if score @p wizardShotRng matches 3 run function wizardwand:enchantment/wizard/t3/breeze
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_3 if score @p wizardShotRng matches 4 run function wizardwand:enchantment/wizard/t3/blaze
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_3 if score @p wizardShotRng matches 5 run function wizardwand:enchantment/wizard/shulker
execute as @p if predicate wizardwand:is_wizard_shot_enchanted_3 if score @p wizardShotRng matches 6 run function wizardwand:enchantment/wizard/t3/dragon
