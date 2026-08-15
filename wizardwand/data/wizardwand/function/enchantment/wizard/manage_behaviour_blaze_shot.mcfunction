scoreboard players remove @e[tag=blaze_drone] blaze_timer 1

function wizardwand:enchantment/wizard/first_shot_wave
function wizardwand:enchantment/wizard/second_shot_wave
function wizardwand:enchantment/wizard/third_shot_wave

execute as @e[tag=motion_projectile] at @s run function wizardwand:blazewand/particles

kill @e[tag=blaze_drone,scores={blaze_timer=..-1}]