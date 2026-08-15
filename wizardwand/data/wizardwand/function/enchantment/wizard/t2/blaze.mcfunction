# Tir immédiat
function wizardwand:enchantment/wizard/t2/shot/1st

summon marker ~ ~ ~ {Tags:["blaze_drone","drone_t2","new_drone"]}
scoreboard players set @e[tag=new_drone] blaze_timer 12

execute as @e[tag=new_drone] run ride @s mount @p[sort=nearest,limit=1]
tag @e[tag=new_drone] remove new_drone

scoreboard players reset @s magic_wand.charge