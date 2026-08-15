execute at @s positioned ^ ^ ^12 run summon evoker_fangs ~ ~ ~ {Warmup:23, Tags:["new_fang"]}
execute at @s positioned ^ ^ ^13 run summon evoker_fangs ~ ~ ~ {Warmup:25, Tags:["new_fang"]}

execute at @s positioned ^ ^ ^14 run summon evoker_fangs ~ ~ ~ {Warmup:27, Tags:["new_fang"]}
execute at @s positioned ^ ^ ^15 run summon evoker_fangs ~ ~ ~ {Warmup:29, Tags:["new_fang"]}

execute as @e[tag=new_fang] run data modify entity @s Owner set from entity @p UUID

# Nettoyage des tags pour éviter les conflits au prochain lancement
tag @e[tag=new_fang] remove new_fang