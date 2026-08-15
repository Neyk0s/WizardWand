function wizardwand:enchantment/wizard/t1/shot/1st

# Son de Blaze
playsound entity.blaze.shoot player @a ~ ~ ~ 1 1.2
summon marker ~ ~ ~ {Tags:["blaze_drone","new_drone"]}

scoreboard players set @e[tag=new_drone] blaze_timer 6

execute as @e[tag=new_drone] run ride @s mount @p[sort=nearest,limit=1]
tag @e[tag=new_drone] remove new_drone

scoreboard players reset @s magic_wand.charge