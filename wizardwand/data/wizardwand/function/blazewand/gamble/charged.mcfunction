function wizardwand:blazewand/shot/gamble

summon marker ~ ~ ~ {Tags:["blaze_drone","drone_gamble","new_drone"]}

scoreboard players set @e[tag=new_drone] blaze_timer 33

execute as @e[tag=new_drone] run ride @s mount @p[sort=nearest,limit=1]
tag @e[tag=new_drone] remove new_drone

scoreboard players reset @s magic_wand.charge