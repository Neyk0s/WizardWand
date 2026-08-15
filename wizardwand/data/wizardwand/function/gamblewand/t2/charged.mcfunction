clear @s gold_nugget 1
# On définit le temps de "gel" de l'actionbar (40 ticks = 2 secondes)
scoreboard players set @s gamble_freeze 20

# (Le reste de ton code pour lancer le sort...)
execute store result score @s gamble_roll run random value 0..25

execute if score @s gamble_roll matches 25 run playsound entity.villager.no master @s ~ ~ ~ 1.0 1.0
execute if score @s gamble_roll matches 25 run title @s actionbar {"text":"[ PERDU! ]","color":"dark_red","bold":true}

execute if score @s gamble_roll matches 0..19 run playsound block.iron_trapdoor.open master @s ~ ~ ~ 1.0 2.0
execute if score @s gamble_roll matches 0..19 run playsound block.note_block.chime master @s ~ ~ ~ 1.0 1.2

execute if score @s gamble_roll matches 20..24 run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 2
execute if score @s gamble_roll matches 20..24 run playsound entity.player.levelup player @a ~ ~ ~ 1 1.2
execute if score @s gamble_roll matches 20..24 run playsound item.totem.use player @a ~ ~ ~ 0.5 2.0


# Affichage des noms qui défilent dans l'actionbar
execute if score @s gamble_roll matches 0 run title @s actionbar {"text":"[ BLAZE ]","color":"gold","bold":true}

execute if score @s gamble_roll matches 1 run title @s actionbar {"text":"[ BREEZE ]","color":"white","bold":true}

# 2. Buff
execute if score @s gamble_roll matches 2 run title @s actionbar {"text":"[ BUFF ]","color":"light_purple","bold":true}

# 3. Damage
execute if score @s gamble_roll matches 3 run title @s actionbar {"text":"[ DAMAGE ]","color":"dark_red","bold":true}

# 4. Dragon
execute if score @s gamble_roll matches 4 run title @s actionbar {"text":"[ DRAGON ]","color":"dark_purple","bold":true}

# 5. Fang
execute if score @s gamble_roll matches 5 run title @s actionbar {"text":"[ FANG ]","color":"gray","bold":true}

# 6. Fire
execute if score @s gamble_roll matches 6 run title @s actionbar {"text":"[ FIRE ]","color":"red","bold":true}

# 7. Giant
execute if score @s gamble_roll matches 7 run title @s actionbar {"text":"[ GIANT ]","color":"dark_green","bold":true}

# 8. Heal
execute if score @s gamble_roll matches 8 run title @s actionbar {"text":"[ HEAL ]","color":"red","bold":true}

# 9. Iron
execute if score @s gamble_roll matches 9 run title @s actionbar {"text":"[ IRON ]","color":"white","bold":true}

# 10. Lightning
execute if score @s gamble_roll matches 10 run title @s actionbar {"text":"[ LIGHTNING ]","color":"yellow","bold":true}

# 11. Mining
execute if score @s gamble_roll matches 11 run title @s actionbar {"text":"[ MINING ]","color":"blue","bold":true}

# 12. Poison
execute if score @s gamble_roll matches 12 run title @s actionbar {"text":"[ POISON ]","color":"green","bold":true}

# 12. Shulker
execute if score @s gamble_roll matches 13 run title @s actionbar {"text":"[ SHULKER ]","color":"light_purple","bold":true}

# 14. Small
execute if score @s gamble_roll matches 14 run title @s actionbar {"text":"[ SMALL ]","color":"dark_aqua","bold":true}

# 15. Snow
execute if score @s gamble_roll matches 15 run title @s actionbar {"text":"[ SNOW ]","color":"aqua","bold":true}

# 16. Teleport
execute if score @s gamble_roll matches 16 run title @s actionbar {"text":"[ TELEPORT ]","color":"dark_blue","bold":true}

# 17. Wither
execute if score @s gamble_roll matches 17 run title @s actionbar {"text":"[ WITHER ]","color":"black","bold":true}

# 18. Alpha
execute if score @s gamble_roll matches 18 run title @s actionbar {"text":"[ WOLF ]","color":"gray","bold":true}

# 18. Alpha
execute if score @s gamble_roll matches 19 run title @s actionbar {"text":"[ WOLF ]","color":"gray","bold":true}

# 19. Jackpot summon
execute if score @s gamble_roll matches 20 run title @s actionbar {"text":"[ JACKPOT SUMMON! ]","color":"gold","bold":true}

# 20. Jackpot buff
execute if score @s gamble_roll matches 21 run title @s actionbar {"text":"[ JACKPOT BUFF! ]","color":"gold","bold":true}

# 21. Jackpot shot
execute if score @s gamble_roll matches 22 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}

# 21. Jackpot shot (alt.)
execute if score @s gamble_roll matches 23 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 24 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}

execute if score @s gamble_roll matches 0 run function wizardwand:blazewand/t3/charged
execute if score @s gamble_roll matches 1 run function wizardwand:breezewand/t3/charged
execute if score @s gamble_roll matches 2 run function wizardwand:buffwand/t3/charged
execute if score @s gamble_roll matches 3 run function wizardwand:damagewand/t3/charged
execute if score @s gamble_roll matches 4 run function wizardwand:dragonwand/t2/charged
execute if score @s gamble_roll matches 5 run function wizardwand:fangwand/t3/charged
execute if score @s gamble_roll matches 6 run function wizardwand:firewand/t3/charged
execute if score @s gamble_roll matches 7 run function wizardwand:giantwand/t2/charged
execute if score @s gamble_roll matches 8 run function wizardwand:healwand/t3/charged
execute if score @s gamble_roll matches 9 run function wizardwand:ironwand/t3/charged
execute if score @s gamble_roll matches 10 run function wizardwand:lightningwand/t3/charged
execute if score @s gamble_roll matches 11 run function wizardwand:miningwand/t3/charged
execute if score @s gamble_roll matches 12 run function wizardwand:poisonwand/t3/charged
execute if score @s gamble_roll matches 13 run function wizardwand:shulkerwand/t1/charged
execute if score @s gamble_roll matches 14 run function wizardwand:smallwand/t2/charged
execute if score @s gamble_roll matches 15 run function wizardwand:snowwand/t3/charged
execute if score @s gamble_roll matches 16 run function wizardwand:teleportwand/t2/charged
execute if score @s gamble_roll matches 17 run function wizardwand:witherwand/t3/charged
execute if score @s gamble_roll matches 18 run function wizardwand:alphawand/t3/charged

# Jackpot summon
execute if score @s gamble_roll matches 19 run function wizardwand:alphawand/t3/charged
execute if score @s gamble_roll matches 19 run function wizardwand:ironwand/t3/charged
execute if score @s gamble_roll matches 19 run function wizardwand:snowwand/t3/charged

# Jackpot buff
execute if score @s gamble_roll matches 20 run function wizardwand:giantwand/t2/charged
execute if score @s gamble_roll matches 20 run function wizardwand:smallwand/t2/charged
execute if score @s gamble_roll matches 20 run function wizardwand:miningwand/t3/charged
execute if score @s gamble_roll matches 20 run function wizardwand:buffwand/t3/charged

# Jackpot shot
execute if score @s gamble_roll matches 21 run function wizardwand:blazewand/t3/charged
execute if score @s gamble_roll matches 21 run function wizardwand:damagewand/t3/charged
execute if score @s gamble_roll matches 21 run function wizardwand:poisonwand/t3/charged
execute if score @s gamble_roll matches 21 run function wizardwand:fangwand/t3/charged
execute if score @s gamble_roll matches 21 run function wizardwand:firewand/t3/charged
execute if score @s gamble_roll matches 21 run function wizardwand:lightningwand/t3/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 22 run function wizardwand:blazewand/t3/charged
execute if score @s gamble_roll matches 22 run function wizardwand:damagewand/t3/charged
execute if score @s gamble_roll matches 22 run function wizardwand:poisonwand/t3/charged
execute if score @s gamble_roll matches 22 run function wizardwand:fangwand/t3/charged
execute if score @s gamble_roll matches 22 run function wizardwand:witherwand/t3/charged
execute if score @s gamble_roll matches 22 run function wizardwand:lightningwand/t3/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 23 run function wizardwand:blazewand/t3/charged
execute if score @s gamble_roll matches 23 run function wizardwand:damagewand/t3/charged
execute if score @s gamble_roll matches 23 run function wizardwand:poisonwand/t3/charged
execute if score @s gamble_roll matches 23 run function wizardwand:fangwand/t3/charged
execute if score @s gamble_roll matches 23 run function wizardwand:dragonwand/t2/charged
execute if score @s gamble_roll matches 23 run function wizardwand:lightningwand/t3/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 24 run function wizardwand:blazewand/t3/charged
execute if score @s gamble_roll matches 24 run function wizardwand:damagewand/t3/charged
execute if score @s gamble_roll matches 24 run function wizardwand:poisonwand/t3/charged
execute if score @s gamble_roll matches 24 run function wizardwand:breezewand/t3/charged
execute if score @s gamble_roll matches 24 run function wizardwand:lightningwand/t3/charged

# 3. Reset charge du bâton
scoreboard players reset @s magic_wand.charge
