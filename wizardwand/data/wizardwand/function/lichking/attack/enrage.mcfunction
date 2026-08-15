tellraw @a [{"text":"<","color":"#0059b3","font":"minecraft:default"},{"text":"Philippe","color":"#0059b3","font":"minecraft:alt"},{"text":"> ","color":"#0059b3","font":"minecraft:default"},{"translate":"id.dialogue.lichking.phase_4","color":"#990000","font":"minecraft:default"}]


# Add tag 
tag @s add lich_enraged

# Sound FX
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 0.6
particle minecraft:flash{color:[1.000,0.000,0.000,1.00]} ~ ~1 ~ 0 0 0 0 1 force

# Update armor
item replace entity @s armor.feet with minecraft:netherite_boots[minecraft:trim={pattern:"minecraft:sentry",material:"minecraft:amethyst"}]
item replace entity @s armor.legs with minecraft:netherite_leggings[minecraft:trim={pattern:"minecraft:tide",material:"minecraft:amethyst"}]
item replace entity @s armor.chest with minecraft:netherite_chestplate[minecraft:trim={pattern:"minecraft:rib",material:"minecraft:amethyst"}]