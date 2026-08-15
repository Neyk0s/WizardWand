execute as @e[type=snow_golem,tag=magic_shot] at @s run tag @e[type=snowball,distance=..3,tag=!magic_snowball] add magic_snowball

# Détecter impacts (plus fiable : inGround OU collision entité)
execute as @e[type=snowball,tag=magic_snowball] at @s if entity @e[type=!snow_golem,type=!snowball,distance=..2.5] run function wizardwand:snowwand/snowball_hit
execute as @e[type=snowball,tag=magic_snowball,nbt={inGround:1b}] run function wizardwand:snowwand/snowball_hit

# Gestion vie golem
execute as @e[tag=magic_snowgolem_t1] run scoreboard players add @s golemTimer 1
execute as @e[tag=magic_snowgolem_t2] run scoreboard players add @s golemTimer 1
execute as @e[tag=magic_snowgolem_t3] run scoreboard players add @s golemTimer 1

execute as @e[tag=magic_snowgolem_t1,scores={golemTimer=100..}] run kill @s
execute as @e[tag=magic_snowgolem_t2,scores={golemTimer=140..}] run kill @s
execute as @e[tag=magic_snowgolem_t3,scores={golemTimer=200..}] run kill @s