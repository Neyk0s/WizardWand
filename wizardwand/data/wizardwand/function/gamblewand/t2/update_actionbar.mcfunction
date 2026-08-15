execute store result score @s gamble_display run random value 0..21

# Affichage des noms qui défilent dans l'actionbar
execute if score @s gamble_display matches 0 run title @s actionbar {"text":"[ BLAZE ]","color":"gold","bold":true}

execute if score @s gamble_display matches 1 run title @s actionbar {"text":"[ BREEZE ]","color":"white","bold":true}

# 2. Buff
execute if score @s gamble_display matches 2 run title @s actionbar {"text":"[ BUFF ]","color":"light_purple","bold":true}

# 3. Damage
execute if score @s gamble_display matches 3 run title @s actionbar {"text":"[ DAMAGE ]","color":"dark_red","bold":true}

# 4. Dragon
execute if score @s gamble_display matches 4 run title @s actionbar {"text":"[ DRAGON ]","color":"dark_purple","bold":true}

# 5. Fang
execute if score @s gamble_display matches 5 run title @s actionbar {"text":"[ FANG ]","color":"gray","bold":true}

# 6. Fire
execute if score @s gamble_display matches 6 run title @s actionbar {"text":"[ FIRE ]","color":"red","bold":true}

# 7. Giant
execute if score @s gamble_display matches 7 run title @s actionbar {"text":"[ GIANT ]","color":"dark_green","bold":true}

# 8. Heal
execute if score @s gamble_display matches 8 run title @s actionbar {"text":"[ HEAL ]","color":"red","bold":true}

# 9. Iron
execute if score @s gamble_display matches 9 run title @s actionbar {"text":"[ IRON ]","color":"white","bold":true}

# 10. Lightning
execute if score @s gamble_display matches 10 run title @s actionbar {"text":"[ LIGHTNING ]","color":"yellow","bold":true}

# 11. Mining
execute if score @s gamble_display matches 11 run title @s actionbar {"text":"[ MINING ]","color":"blue","bold":true}

# 12. Poison
execute if score @s gamble_display matches 12 run title @s actionbar {"text":"[ POISON ]","color":"green","bold":true}

# 12. Shulker
execute if score @s gamble_display matches 13 run title @s actionbar {"text":"[ SHULKER ]","color":"light_purple","bold":true}

# 14. Small
execute if score @s gamble_display matches 14 run title @s actionbar {"text":"[ SMALL ]","color":"dark_aqua","bold":true}

# 15. Snow
execute if score @s gamble_display matches 15 run title @s actionbar {"text":"[ SNOW ]","color":"aqua","bold":true}

# 16. Teleport
execute if score @s gamble_display matches 16 run title @s actionbar {"text":"[ TELEPORT ]","color":"dark_blue","bold":true}

# 17. Wither
execute if score @s gamble_display matches 17 run title @s actionbar {"text":"[ WITHER ]","color":"black","bold":true}

# 18. Wolf
execute if score @s gamble_display matches 18 run title @s actionbar {"text":"[ WOLF ]","color":"gray","bold":true}

# 19. Jackpot summon
execute if score @s gamble_display matches 19 run title @s actionbar {"text":"[ JACKPOT SUMMON! ]","color":"gold","bold":true}

# 20. Jackpot buff
execute if score @s gamble_display matches 20 run title @s actionbar {"text":"[ JACKPOT BUFF! ]","color":"gold","bold":true}

# 20. Jackpot shot
execute if score @s gamble_display matches 21 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}

