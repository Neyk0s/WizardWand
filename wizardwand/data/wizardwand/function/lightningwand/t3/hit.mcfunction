summon lightning_bolt ~ ~ ~
summon marker ~ ~ ~ {Tags:["lightning_center","new_lightning"]}
execute as @e[type=marker,tag=new_lightning] run scoreboard players set @s lightning_timer 0
execute as @e[type=marker,tag=new_lightning] run scoreboard players set @s lightning_tier 3
tag @e[type=marker,tag=new_lightning] remove new_lightning