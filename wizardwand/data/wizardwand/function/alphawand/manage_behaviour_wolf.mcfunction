execute as @e[tag=magic_wolf_t1] run scoreboard players add @s golemTimer 1
execute as @e[tag=magic_wolf_t2] run scoreboard players add @s golemTimer 1
execute as @e[tag=magic_wolf_t3] run scoreboard players add @s golemTimer 1
execute as @e[tag=magic_wolf_gamble] run scoreboard players add @s golemTimer 1

execute as @e[tag=magic_wolf_t1,scores={golemTimer=200..}] run kill @s
execute as @e[tag=magic_wolf_t2,scores={golemTimer=250..}] run kill @s
execute as @e[tag=magic_wolf_t3,scores={golemTimer=300..}] run kill @s
execute as @e[tag=magic_wolf_gamble,scores={golemTimer=300..}] run kill @s