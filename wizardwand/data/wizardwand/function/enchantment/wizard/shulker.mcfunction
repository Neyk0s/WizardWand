playsound entity.shulker.shoot player @a ~ ~ ~ 1 1 0

summon minecraft:shulker_bullet ^ ^0.1 ^ {Tags:["motion_projectile"],NoGravity:1b}

scoreboard players reset @s magic_wand.charge