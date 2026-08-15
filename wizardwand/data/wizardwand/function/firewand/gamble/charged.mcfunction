playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 1 0

summon minecraft:fireball ^ ^1.5 ^1 {Tags:["motion_projectile", "fire_trail_t1", "fire_trail_t2", "fire_trail_t3"],ExplosionPower:10}

scoreboard players reset @s magic_wand.charge