# 1. On marque cette ancre temporairement
tag @s add tp_anchor_active

# 2. On copie l'ID de l'ancre dans une variable temporaire (GLOBAL)
scoreboard players operation GLOBAL magic_wand.id = @s id

# 3. On TP le joueur qui a le même magic_wand.id vers l'ancre
execute as @a[tag=tp_active] if score @s magic_wand.id = GLOBAL magic_wand.id run tp @s @e[tag=tp_anchor_active,limit=1]

# 4. Nettoyage
tag @s remove tp_anchor_active

# 5. Nettoyage du joueur TP seulement
execute as @a[tag=tp_active] if score @s magic_wand.id = GLOBAL magic_wand.id run tag @s remove tp_active
execute as @a[tag=tp_active] if score @s magic_wand.id = GLOBAL magic_wand.id run scoreboard players reset @s magic_wand.id

# 6. Effets visuels magiques de retour
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5

# 7. Nettoyage de l'ancre
kill @s