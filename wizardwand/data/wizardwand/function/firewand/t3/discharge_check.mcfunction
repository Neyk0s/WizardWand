#Store the gametime to a fake player's timestamp
execute store result score #this magic_wand.timestamp run time query gametime

#If the players timestamp matches the fake player's timestamp then the have stopped holding right button
execute as @a if score @s magic_wand.timestamp = #this magic_wand.timestamp at @s run function wizardwand:firewand/t3/discharge_reset
