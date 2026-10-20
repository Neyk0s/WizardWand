function wizardwand:blazewand/first_shot_wave
function wizardwand:blazewand/second_shot_wave
function wizardwand:blazewand/third_shot_wave
function wizardwand:blazewand/gamble_shot_wave

execute as @e[tag=motion_projectile] at @s run function wizardwand:blazewand/particles

scoreboard players remove @a[scores={blaze_timer_t1=1..}] blaze_timer_t1 1
scoreboard players remove @a[scores={blaze_timer_t2=1..}] blaze_timer_t2 1
scoreboard players remove @a[scores={blaze_timer_t3=1..}] blaze_timer_t3 1
scoreboard players remove @a[scores={blaze_timer_gamble=1..}] blaze_timer_gamble 1