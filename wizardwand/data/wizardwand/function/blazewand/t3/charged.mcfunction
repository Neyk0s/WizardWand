function wizardwand:blazewand/shot/t3

summon marker ~ ~ ~ {Tags:["blaze_drone","drone_t3","new_drone"]}

scoreboard players set @e[tag=new_drone] blaze_timer 24

execute as @e[tag=new_drone] run ride @s mount @p[sort=nearest,limit=1]
tag @e[tag=new_drone] remove new_drone

scoreboard players reset @s magic_wand.charge