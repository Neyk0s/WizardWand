# 1. On marque cette ancre temporairement
tag @s add tp_anchor_active

# 2. On copie l'ID de l'ancre dans une variable temporaire (GLOBAL)
scoreboard players operation GLOBAL magic_wand.id = @s id

# 3. On invoque le Creeper à la position du joueur propriétaire
execute as @a[tag=tp_active] if score @s magic_wand.id = GLOBAL magic_wand.id at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:3b,ActiveEffects:[{Id:14,Amplifier:0,Duration:10,ShowParticles:0b}],Invulnerable:1b,CustomName:'{"text":"MagicDeparture"}'}

# 4. On donne la micro-résistance au joueur propriétaire
execute as @a[tag=tp_active] if score @s magic_wand.id = GLOBAL magic_wand.id run effect give @s minecraft:resistance 1 255 true

# 5. Téléportation vers l'ancre pour le joueur propriétaire
execute as @a[tag=tp_active] if score @s magic_wand.id = GLOBAL magic_wand.id run tp @s @e[tag=tp_anchor_active,limit=1]

# 6. Nettoyage
tag @s remove tp_anchor_active

# 7. Nettoyage du joueur TP seulement
execute as @a[tag=tp_active] if score @s magic_wand.id = GLOBAL magic_wand.id run tag @s remove tp_active
execute as @a[tag=tp_active] if score @s magic_wand.id = GLOBAL magic_wand.id run scoreboard players reset @s magic_wand.id

# 8. Effets visuels à l'arrivée
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5

# 9. Nettoyage de l'ancre T2
kill @s