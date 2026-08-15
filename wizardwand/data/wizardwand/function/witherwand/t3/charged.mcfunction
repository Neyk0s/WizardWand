playsound entity.wither.shoot player @a ~ ~ ~ 1 0.7 0
playsound entity.wither.spawn player @a ~ ~ ~ 0.5 0.5 0


summon minecraft:wither_skull ^ ^1.5 ^1 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

summon minecraft:wither_skull ^-1.5 ^1.5 ^1.2 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

summon minecraft:wither_skull ^1.5 ^1.5 ^1.2 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

scoreboard players reset @s magic_wand.charge

