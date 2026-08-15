playsound entity.lingering_potion.throw master @a ~ ~ ~ 0.8 1.0 0.8

summon lingering_potion ^ ^1.5 ^ {Tags:["motion_projectile","fast"],Item:{id:"minecraft:lingering_potion",Count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:220}],custom_color:16711764}}}}

scoreboard players reset @s magic_wand.charge