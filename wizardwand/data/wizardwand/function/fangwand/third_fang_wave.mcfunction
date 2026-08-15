# Crocs n°5 (Distance)
execute at @s positioned ^ ^ ^8 run summon evoker_fangs ~ ~ ~ {Warmup:15, Tags:["new_fang"]}
execute at @s positioned ^ ^ ^9 run summon evoker_fangs ~ ~ ~ {Warmup:17, Tags:["new_fang"]}

# Crocs n°5 (Distance)
execute at @s positioned ^ ^ ^10 run summon evoker_fangs ~ ~ ~ {Warmup:19, Tags:["new_fang"]}
execute at @s positioned ^ ^ ^11 run summon evoker_fangs ~ ~ ~ {Warmup:21, Tags:["new_fang"]}

execute as @e[tag=new_fang] run data modify entity @s Owner set from entity @p UUID

# Nettoyage des tags pour éviter les conflits au prochain lancement
tag @e[tag=new_fang] remove new_fang