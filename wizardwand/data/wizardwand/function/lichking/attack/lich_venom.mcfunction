# Sounds
playsound minecraft:entity.splash_potion.throw hostile @a ~ ~ ~ 1 0.6

# Summon
summon lingering_potion ~ ~1 ~ {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:slowness",amplifier:1,duration:200},{id:"minecraft:poison",amplifier:1,duration:200}],custom_color:3914239}}}}

# Clean up
tag @a[tag=aimed_by_lich_king,distance=..32] remove aimed_by_lich_king
scoreboard players set @e[tag=lich_king] lich_attack_timer 0
kill @s