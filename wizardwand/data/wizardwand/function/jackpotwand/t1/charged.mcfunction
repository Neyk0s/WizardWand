clear @s gold_ingot 1
scoreboard players set @s gamble_freeze 20

execute store result score @s gamble_roll run random value 0..11

playsound minecraft:block.bell.use master @a ~ ~ ~ 1 2
playsound entity.player.levelup player @a ~ ~ ~ 1 1.2
playsound item.totem.use player @a ~ ~ ~ 0.5 2.0

execute if score @s gamble_roll matches 0 run title @s actionbar {"text":"[ JACKPOT SUMMON! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 1 run title @s actionbar {"text":"[ JACKPOT BUFF! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 2 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 3 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 4 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 5 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 6 run title @s actionbar {"text":"[ JACKPOT SUMMON! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 7 run title @s actionbar {"text":"[ JACKPOT SUMMON! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 8 run title @s actionbar {"text":"[ JACKPOT SUMMON! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 9 run title @s actionbar {"text":"[ JACKPOT BUFF! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 10 run title @s actionbar {"text":"[ JACKPOT BUFF! ]","color":"gold","bold":true}
execute if score @s gamble_roll matches 11 run title @s actionbar {"text":"[ JACKPOT BUFF! ]","color":"gold","bold":true}


# Jackpot summon
execute if score @s gamble_roll matches 0 run function wizardwand:alphawand/gamble/charged
execute if score @s gamble_roll matches 0 run function wizardwand:ironwand/gamble/charged
execute if score @s gamble_roll matches 0 run function wizardwand:snowwand/gamble/charged

# Jackpot buff
execute if score @s gamble_roll matches 1 run function wizardwand:giantwand/gamble/charged
execute if score @s gamble_roll matches 1 run function wizardwand:smallwand/gamble/charged
execute if score @s gamble_roll matches 1 run function wizardwand:miningwand/gamble/charged
execute if score @s gamble_roll matches 1 run function wizardwand:buffwand/gamble/charged

# Jackpot shot
execute if score @s gamble_roll matches 2 run function wizardwand:blazewand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:damagewand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:poisonwand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:fangwand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:firewand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:lightningwand/gamble/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 3 run function wizardwand:blazewand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:damagewand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:poisonwand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:fangwand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:witherwand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:lightningwand/gamble/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 4 run function wizardwand:blazewand/gamble/charged
execute if score @s gamble_roll matches 4 run function wizardwand:damagewand/gamble/charged
execute if score @s gamble_roll matches 4 run function wizardwand:poisonwand/gamble/charged
execute if score @s gamble_roll matches 4 run function wizardwand:fangwand/gamble/charged
execute if score @s gamble_roll matches 4 run function wizardwand:dragonwand/gamble/charged
execute if score @s gamble_roll matches 4 run function wizardwand:lightningwand/gamble/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 5 run function wizardwand:blazewand/gamble/charged
execute if score @s gamble_roll matches 5 run function wizardwand:damagewand/gamble/charged
execute if score @s gamble_roll matches 5 run function wizardwand:poisonwand/gamble/charged
execute if score @s gamble_roll matches 5 run function wizardwand:breezewand/gamble/charged
execute if score @s gamble_roll matches 5 run function wizardwand:lightningwand/gamble/charged

# Jackpot summon & buff pour rééquilibrer le tirage
execute if score @s gamble_roll matches 6 run function wizardwand:alphawand/gamble/charged
execute if score @s gamble_roll matches 6 run function wizardwand:ironwand/gamble/charged
execute if score @s gamble_roll matches 6 run function wizardwand:snowwand/gamble/charged

execute if score @s gamble_roll matches 7 run function wizardwand:alphawand/gamble/charged
execute if score @s gamble_roll matches 7 run function wizardwand:ironwand/gamble/charged
execute if score @s gamble_roll matches 7 run function wizardwand:snowwand/gamble/charged

execute if score @s gamble_roll matches 8 run function wizardwand:alphawand/gamble/charged
execute if score @s gamble_roll matches 8 run function wizardwand:ironwand/gamble/charged
execute if score @s gamble_roll matches 8 run function wizardwand:snowwand/gamble/charged

execute if score @s gamble_roll matches 9 run function wizardwand:giantwand/gamble/charged
execute if score @s gamble_roll matches 9 run function wizardwand:smallwand/gamble/charged
execute if score @s gamble_roll matches 9 run function wizardwand:miningwand/gamble/charged
execute if score @s gamble_roll matches 9 run function wizardwand:buffwand/gamble/charged

execute if score @s gamble_roll matches 10 run function wizardwand:giantwand/gamble/charged
execute if score @s gamble_roll matches 10 run function wizardwand:smallwand/gamble/charged
execute if score @s gamble_roll matches 10 run function wizardwand:miningwand/gamble/charged
execute if score @s gamble_roll matches 10 run function wizardwand:buffwand/gamble/charged

execute if score @s gamble_roll matches 11 run function wizardwand:giantwand/gamble/charged
execute if score @s gamble_roll matches 11 run function wizardwand:smallwand/gamble/charged
execute if score @s gamble_roll matches 11 run function wizardwand:miningwand/gamble/charged
execute if score @s gamble_roll matches 11 run function wizardwand:buffwand/gamble/charged

# 3. Reset charge du bâton
scoreboard players reset @s magic_wand.charge
