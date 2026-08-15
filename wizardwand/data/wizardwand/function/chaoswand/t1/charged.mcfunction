execute store result score @s gamble_roll run random value 0..3

# Jackpot shot
execute if score @s gamble_roll matches 0 run function wizardwand:blazewand/gamble/charged
execute if score @s gamble_roll matches 0 run function wizardwand:damagewand/gamble/charged
execute if score @s gamble_roll matches 0 run function wizardwand:poisonwand/gamble/charged
execute if score @s gamble_roll matches 0 run function wizardwand:fangwand/gamble/charged
execute if score @s gamble_roll matches 0 run function wizardwand:firewand/gamble/charged
execute if score @s gamble_roll matches 0 run function wizardwand:lightningwand/gamble/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 1 run function wizardwand:blazewand/gamble/charged
execute if score @s gamble_roll matches 1 run function wizardwand:damagewand/gamble/charged
execute if score @s gamble_roll matches 1 run function wizardwand:poisonwand/gamble/charged
execute if score @s gamble_roll matches 1 run function wizardwand:fangwand/gamble/charged
execute if score @s gamble_roll matches 1 run function wizardwand:witherwand/gamble/charged
execute if score @s gamble_roll matches 1 run function wizardwand:lightningwand/gamble/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 2 run function wizardwand:blazewand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:damagewand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:poisonwand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:fangwand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:dragonwand/gamble/charged
execute if score @s gamble_roll matches 2 run function wizardwand:lightningwand/gamble/charged

# Jackpot shot (alt.)
execute if score @s gamble_roll matches 3 run function wizardwand:blazewand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:damagewand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:poisonwand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:breezewand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:lightningwand/gamble/charged
execute if score @s gamble_roll matches 3 run function wizardwand:icewand/gamble/charged

# 3. Reset charge du bâton
scoreboard players reset @s magic_wand.charge
