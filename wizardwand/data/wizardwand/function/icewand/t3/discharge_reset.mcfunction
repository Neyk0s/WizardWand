#Reset the charge score
scoreboard players set @s magic_wand.charge 0

#Stop charging sound
stopsound @a player block.beacon.activate

#Play a sound
playsound entity.creeper.primed player @a ~ ~ ~ 1 2 0

#Update the action bar
function wizardwand:icewand/t3/update_actionbar