# Effets...
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1.2 0.8
particle dust{color:[1.0f,0.9f,0.3f],scale:2.5f} ~ ~2 ~ 3 4 3 0.4 200

# Son
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 0.8 0.7
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.8 1.2

# Particules ÉNORMES
particle electric_spark ~ ~3 ~ 3 5 3 0.2 100
particle cloud ~ ~2 ~ 4 2 4 0.3 80

particle dust{color:[1.0f,0.8f,0.0f],scale:1.5f} ~ ~1 ~ 1 1 1 0.1 50

effect give @e[distance=..3,type=!player,type=!minecraft:zombie,type=!minecraft:skeleton,type=!minecraft:husk,type=!minecraft:drowned,type=!minecraft:zombie_nautilus,type=!minecraft:zombie_horse,type=!minecraft:zombie_villager,type=!minecraft:zombified_piglin,type=!minecraft:zoglin,type=!minecraft:wither_skeleton,type=!minecraft:skeleton_horse,type=!minecraft:camel_husk] instant_damage 1 1 true
effect give @e[distance=..3,type=minecraft:zombie] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:skeleton] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:husk] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:drowned] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:zombie_nautilus] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:zombie_horse] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:zombie_villager] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:zombified_piglin] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:zoglin] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:wither_skeleton] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:skeleton_horse] instant_health 1 1 true
effect give @e[distance=..3,type=minecraft:camel_husk] instant_health 1 1 true