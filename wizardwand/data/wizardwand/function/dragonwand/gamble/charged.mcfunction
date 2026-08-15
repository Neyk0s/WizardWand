playsound entity.ender_dragon.shoot player @a ~ ~ ~ 1 0.8

summon dragon_fireball ^ ^1.5 ^1 {Tags:["motion_projectile"], Passengers:[{id:"minecraft:marker", Tags:["bh_gamble_tracker"]}]}

scoreboard players reset @s magic_wand.charge