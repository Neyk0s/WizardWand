#Si problème avec certaine baguette, faut donner des valeurs par défauts aux objectives

#Store current times related to the item
scoreboard objectives add magic_wand.charge dummy
scoreboard objectives add magic_wand.timestamp dummy

# Enchantement
scoreboard objectives add paladinStrikeRng dummy
scoreboard objectives add wizardShotRng dummy

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

scoreboard objectives add projectile_life_time dummy

scoreboard objectives add golemTimer dummy

#Display message
tellraw @a {"text":"TEST LOAD", "color":"dark_gray"}

# Gestion tirs

# Blaze
scoreboard objectives add blaze_timer dummy

# Dragon T2
scoreboard objectives add bh_timer dummy

# Gestion teleportwand
scoreboard objectives add id dummy
scoreboard objectives add found_pearl dummy
scoreboard objectives add tp_back_timer dummy
scoreboard objectives add global_id dummy
scoreboard objectives add grace_period dummy
scoreboard objectives add magic_wand.id dummy

# Gestion bâton de taille
scoreboard objectives add giant_timer dummy
scoreboard objectives add small_timer dummy

# Gamble
scoreboard objectives add gamble_roll dummy
scoreboard objectives add gamble_display dummy
scoreboard objectives add gamble_has_gold dummy
scoreboard objectives add jackpot_has_gold dummy
scoreboard objectives add gamble_freeze dummy

# Gestion buff
scoreboard objectives add buff_timer_t1 dummy
scoreboard objectives add buff_timer_t2 dummy
scoreboard objectives add buff_timer_t3 dummy

scoreboard objectives add mining_timer_t1 dummy
scoreboard objectives add mining_timer_t2 dummy
scoreboard objectives add mining_timer_t3 dummy

# Gestion warrior
scoreboard objectives add warrior_kills totalKillCount
scoreboard objectives add warrior_streak dummy
scoreboard objectives add warrior_timer dummy
scoreboard objectives add warrior_decay dummy

# Lightning
scoreboard objectives add lightning_timer dummy
scoreboard objectives add lightning_tier dummy

#TODO: Vérifier à supprimer
scoreboard objectives add raycast_range dummy
scoreboard objectives add raycast_step dummy
scoreboard objectives add ice_age dummy


# Gestion bar de vie Lich king
bossbar add lich_king_bar {"text":"Le Roi Liche"}
bossbar set minecraft:lich_king_bar name [{"text":"Le Roi ","color":"#4ae2ff"},{"text":"Liche","color":"#0059b3","bold":true}]
bossbar set minecraft:lich_king_bar color blue

# Segmentation de la bar de vie en 6
bossbar set minecraft:lich_king_bar style notched_6

# Crée le timer pour l'animation de mort du Roi Liche
scoreboard objectives add lich_death_timer dummy

# Crée le timer pour les capacités du Roi Liche
scoreboard objectives add lich_attack_timer dummy

scoreboard objectives add lich_aim_timer dummy

scoreboard objectives add lich_attack_choice dummy
scoreboard objectives add lich_hp dummy

scoreboard objectives add lich_current dummy
scoreboard objectives add lich_max dummy
scoreboard objectives add lich_threshold dummy
scoreboard objectives add lich_th_50 dummy
scoreboard objectives add lich_th_25 dummy
