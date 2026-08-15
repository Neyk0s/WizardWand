playsound entity.wither.shoot player @a ~ ~ ~ 1 0.7 0
playsound entity.wither.spawn player @a ~ ~ ~ 0.5 0.5 0

#execute at @s run particle minecraft:flash{color:[0.200,0.000,0.300,1.00]} ^ ^1.5 ^1 0 0 0 1 0 normal

summon minecraft:wither_skull ^ ^1.5 ^1 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

summon minecraft:wither_skull ^-1.5 ^1.5 ^1.2 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

summon minecraft:wither_skull ^1.5 ^1.5 ^1.2 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

summon minecraft:wither_skull ^ ^2 ^1 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

summon minecraft:wither_skull ^-1.5 ^2 ^1.2 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

summon minecraft:wither_skull ^1.5 ^2 ^1.2 {Tags:["motion_projectile","wither_trail","wither_trail_t3"]}

scoreboard players reset @s magic_wand.charge

