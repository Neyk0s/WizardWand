playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 1 0

summon minecraft:fireball ^ ^0.5 ^ {Tags:["motion_projectile", "fire_trail_t1", "fire_trail_t2"],ExplosionPower:2}

scoreboard players reset @s magic_wand.charge