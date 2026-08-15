tag @s remove is_rogue
execute as @s if predicate wizardwand:is_rogue_enchanted_1 run function wizardwand:enchantment/rogue/buff_lvl1
execute as @s if predicate wizardwand:is_rogue_enchanted_2 run function wizardwand:enchantment/rogue/buff_lvl2
execute as @s if predicate wizardwand:is_rogue_enchanted_3 run function wizardwand:enchantment/rogue/buff_lvl3

execute as @s[tag=!is_rogue] run function wizardwand:enchantment/rogue/reset_buff