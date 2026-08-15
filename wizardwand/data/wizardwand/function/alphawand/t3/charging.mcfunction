# Revoke the advancement
advancement revoke @s only wizardwand:alphawand/alpha_wand_t3_charging

# Increment the players charge score
scoreboard players add @s magic_wand.charge 1

# If charge level reached then run function. Change la vitesse de chargement
execute if score @s magic_wand.charge matches 40.. run function wizardwand:alphawand/t3/charged

# Save the gametime to players wand timestamp
execute store result score @s magic_wand.timestamp run time query gametime

# Add 2 to the players wand timestamp
scoreboard players add @s magic_wand.timestamp 2

# Check if player has stopped holding right button
schedule function wizardwand:alphawand/t3/discharge_check 2t append

# Playsound
execute if score @s magic_wand.charge matches 1 run playsound block.beacon.activate player @a ~ ~ ~ 1 1 0

execute if score @s magic_wand.charge matches 26 run execute as @s if predicate wizardwand:is_wizard_summon_enchanted run scoreboard players set @s magic_wand.charge 39

# Update the action bar
function wizardwand:alphawand/t3/update_actionbar