summon minecraft:snowball ^ ^1.5 ^1 {Tags:["motion_projectile","fast","ice_projectile_t3", "ice_particule_t1", "ice_particule_t2", "ice_particule_t3"],NoGravity:1b}

# Donner la protection au lanceur pendant 1 seconde
tag @s add ice_protect
schedule function wizardwand:icewand/t3/remove_ice_protect 1s append

scoreboard players reset @s magic_wand.charge