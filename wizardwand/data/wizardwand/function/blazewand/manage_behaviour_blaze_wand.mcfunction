function wizardwand:blazewand/first_shot_wave
function wizardwand:blazewand/second_shot_wave
function wizardwand:blazewand/third_shot_wave
function wizardwand:blazewand/gamble_shot_wave

execute as @e[tag=motion_projectile] at @s run function wizardwand:blazewand/particles

scoreboard players remove @e[tag=blaze_drone] blaze_timer 1
kill @e[tag=blaze_drone,scores={blaze_timer=..-1}]
kill @e[tag=drone_t2,scores={blaze_timer=..-1}]
kill @e[tag=drone_t3,scores={blaze_timer=..-1}]
kill @e[tag=drone_gamble,scores={blaze_timer=..-1}]