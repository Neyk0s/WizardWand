playsound entity.wither.shoot player @a ~ ~ ~ 1 0.8 0
playsound entity.generic.extinguish_fire player @a ~ ~ ~ 0.5 0.5 0

summon minecraft:wither_skull ^ ^1.5 ^1 {Tags:["motion_projectile", "wither_trail"]}

scoreboard players reset @s magic_wand.charge