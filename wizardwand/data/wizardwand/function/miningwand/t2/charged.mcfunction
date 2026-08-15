playsound entity.player.levelup player @a ~ ~ ~ 1 1.2
playsound item.totem.use player @a ~ ~ ~ 0.5 2.0


effect give @s minecraft:haste 15 1 true
effect give @s minecraft:night_vision 60 0 true

# Particules
scoreboard players set @s mining_timer_t1 20
scoreboard players set @s mining_timer_t2 20

scoreboard players reset @s magic_wand.charge