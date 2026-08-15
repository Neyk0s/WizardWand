# Crocs n°1 (Sur toi)
execute at @s positioned ^ ^ ^1 run summon evoker_fangs ~ ~ ~ {Warmup:0, Tags:["new_fang"]}

# Crocs n°2
execute at @s positioned ^ ^ ^2 run summon evoker_fangs ~ ~ ~ {Warmup:3, Tags:["new_fang"]}
execute at @s positioned ^ ^ ^3 run summon evoker_fangs ~ ~ ~ {Warmup:5, Tags:["new_fang"]}

execute as @e[tag=new_fang] run data modify entity @s Owner set from entity @p UUID

# Nettoyage des tags pour éviter les conflits au prochain lancement
tag @e[tag=new_fang] remove new_fang