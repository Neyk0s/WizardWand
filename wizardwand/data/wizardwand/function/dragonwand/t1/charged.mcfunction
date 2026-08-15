# 1. Son de lancer
playsound entity.ender_dragon.shoot player @a ~ ~ ~ 1 0.8 0

# 2. Summon
summon dragon_fireball ^ ^1.5 ^1 {Tags:["motion_projectile"]}

# 3. Reset charge du bâton
scoreboard players reset @s magic_wand.charge