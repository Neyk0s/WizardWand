# Tir immédiat
function wizardwand:blazewand/shot/t2

# Invoquer le drone
summon marker ~ ~ ~ {Tags:["blaze_drone","drone_t2","new_drone"]}
# On lui donne un temps de vie plus long (ex: 12 ticks pour 5 tirs)
scoreboard players set @e[tag=new_drone] blaze_timer 12

# L'attacher au joueur
execute as @e[tag=new_drone] run ride @s mount @p[sort=nearest,limit=1]
tag @e[tag=new_drone] remove new_drone

# Reset de la charge du bâton
scoreboard players reset @s magic_wand.charge