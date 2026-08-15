# Tir immédiat
function wizardwand:blazewand/shot/t1

# Invoquer le drone
summon marker ~ ~ ~ {Tags:["blaze_drone","new_drone"]}

# Lui donner son "essence" (sa durée de vie de 6 ticks)
scoreboard players set @e[tag=new_drone] blaze_timer 6

# L'attacher au joueur
execute as @e[tag=new_drone] run ride @s mount @p[sort=nearest,limit=1]
tag @e[tag=new_drone] remove new_drone

# Reset de la charge du bâton
scoreboard players reset @s magic_wand.charge