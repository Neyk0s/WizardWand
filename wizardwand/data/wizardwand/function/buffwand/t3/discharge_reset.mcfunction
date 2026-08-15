# Reset score
scoreboard players set @s magic_wand.charge 0

# Stop sound
stopsound @a player block.beacon.activate

# Play sound
playsound entity.creeper.primed player @a ~ ~ ~ 1 2 0

# Update actionbar
function wizardwand:buffwand/t3/update_actionbar