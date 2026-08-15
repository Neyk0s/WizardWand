# Store the gametime to a fake player's timestamp
execute store result score #this magic_wand.timestamp run time query gametime

# Check if player stopped holding
execute as @a if score @s magic_wand.timestamp = #this magic_wand.timestamp at @s run function wizardwand:buffwand/t3/discharge_reset