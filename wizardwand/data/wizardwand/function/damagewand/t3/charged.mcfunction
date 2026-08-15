playsound entity.lingering_potion.throw master @a ~ ~ ~ 0.8 1.0 0.8

summon lingering_potion ^ ^1.5 ^1 {Tags:["motion_projectile","fast"],Item:{id:"minecraft:lingering_potion",Count:1b,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:instant_damage",amplifier:1,duration:220}, {id:"minecraft:slowness",amplifier:1,duration:220}],custom_color:9109504}}}}

scoreboard players reset @s magic_wand.charge