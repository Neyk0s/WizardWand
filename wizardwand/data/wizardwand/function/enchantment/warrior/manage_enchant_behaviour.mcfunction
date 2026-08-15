# Manage enchantment warrior
execute as @a[scores={warrior_streak=3..}] run function wizardwand:enchantment/warrior/activate_rage
execute as @a[scores={warrior_timer=1..}] run scoreboard players remove @s warrior_timer 1
execute as @a[scores={warrior_timer=0}] run function wizardwand:enchantment/warrior/reset_buff

# Put timer to -1 to avoid repeating the reset_buff function
execute as @a[scores={warrior_timer=0}] run scoreboard players set @s warrior_timer -1

# Augment streak if player has warrior kills and is enchanted
execute as @a[scores={warrior_kills=1..}] if predicate wizardwand:is_warrior_enchanted_1 run scoreboard players add @s warrior_streak 1
execute as @a[scores={warrior_kills=1..}] if predicate wizardwand:is_warrior_enchanted_2 run scoreboard players add @s warrior_streak 1
execute as @a[scores={warrior_kills=1..}] if predicate wizardwand:is_warrior_enchanted_3 run scoreboard players add @s warrior_streak 1

# Put warrior_kills back to 0 after adding to streak
scoreboard players set @a[scores={warrior_kills=1..}] warrior_kills 0

# Manage decay for warrior streak
execute as @a[scores={warrior_streak=1..,warrior_timer=-1}] run scoreboard players add @s warrior_decay 1
execute as @a[scores={warrior_decay=140..}] run scoreboard players remove @s warrior_streak 1
execute as @a[scores={warrior_decay=140..}] run scoreboard players set @s warrior_decay 0
execute as @a[scores={warrior_streak=..-1}] run scoreboard players set @s warrior_streak 0
execute as @a[scores={warrior_streak=0}] run scoreboard players set @s warrior_decay 0

execute if predicate wizardwand:is_warrior_enchanted_1 run execute as @a run function wizardwand:enchantment/warrior/display_lvl1
execute if predicate wizardwand:is_warrior_enchanted_2 run execute as @a run function wizardwand:enchantment/warrior/display_lvl2
execute if predicate wizardwand:is_warrior_enchanted_3 run execute as @a run function wizardwand:enchantment/warrior/display_lvl3