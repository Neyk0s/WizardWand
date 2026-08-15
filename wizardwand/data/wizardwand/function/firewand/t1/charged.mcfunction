playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 1 0

summon minecraft:fireball ^ ^1.5 ^1 {Tags:["motion_projectile", "fire_trail_t1"],ExplosionPower:2}

scoreboard players reset @s magic_wand.charge