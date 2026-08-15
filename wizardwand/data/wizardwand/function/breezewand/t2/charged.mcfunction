# 1. Son
playsound entity.breeze.shoot player @a ~ ~ ~ 1 1 0

summon minecraft:breeze_wind_charge ^ ^1.5 ^1 {Tags:["motion_projectile", "breeze_trail_t1", "breeze_trail_t2"]}

# 5. Nettoyage immédiat
scoreboard players reset @s magic_wand.charge