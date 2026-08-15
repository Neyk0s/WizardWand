execute at @s positioned ^ ^ ^4 run summon evoker_fangs ~ ~ ~ {Warmup:7, Tags:["new_fang"]}
execute at @s positioned ^ ^ ^5 run summon evoker_fangs ~ ~ ~ {Warmup:9, Tags:["new_fang"]}

execute at @s positioned ^ ^ ^6 run summon evoker_fangs ~ ~ ~ {Warmup:11, Tags:["new_fang"]}
execute at @s positioned ^ ^ ^7 run summon evoker_fangs ~ ~ ~ {Warmup:13, Tags:["new_fang"]}

execute as @e[tag=new_fang] run data modify entity @s Owner set from entity @p UUID

tag @e[tag=new_fang] remove new_fang