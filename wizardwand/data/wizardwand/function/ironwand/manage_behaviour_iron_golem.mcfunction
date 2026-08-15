execute as @e[tag=magic_irongolem_t1] run scoreboard players add @s golemTimer 1
execute as @e[tag=magic_irongolem_t2] run scoreboard players add @s golemTimer 1
execute as @e[tag=magic_irongolem_t3] run scoreboard players add @s golemTimer 1

execute as @e[tag=magic_irongolem_t1,scores={golemTimer=200..}] run kill @s
execute as @e[tag=magic_irongolem_t2,scores={golemTimer=240..}] run kill @s
execute as @e[tag=magic_irongolem_t3,scores={golemTimer=340..}] run kill @s