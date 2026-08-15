playsound entity.player.levelup player @a ~ ~ ~ 1 1.2
playsound item.totem.use player @a ~ ~ ~ 0.5 2.0

effect give @s minecraft:strength 5 2 true
effect give @s minecraft:absorption 5 1 true

# Particules
scoreboard players set @s buff_timer_t1 20
scoreboard players set @s buff_timer_t2 20
scoreboard players set @s buff_timer_t3 20

scoreboard players reset @s magic_wand.charge