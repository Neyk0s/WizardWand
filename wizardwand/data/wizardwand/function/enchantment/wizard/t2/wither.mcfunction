playsound entity.wither.shoot player @a ~ ~ ~ 1 1 0

execute at @s run particle minecraft:large_smoke ^ ^0.1 ^ 0.2 0.2 0.2 0.05 10 force
execute at @s run particle minecraft:witch ^ ^0.1 ^ 0.3 0.3 0.3 0.1 15 force
summon minecraft:wither_skull ^ ^0.1 ^ {Tags:["motion_projectile", "wither_trail"]}

scoreboard players reset @s magic_wand.charge