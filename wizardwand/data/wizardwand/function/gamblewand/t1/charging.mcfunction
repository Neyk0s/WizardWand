# 1. On réinitialise l'avancement immédiatement pour pouvoir détecter le tick suivant
advancement revoke @s only wizardwand:gamblewand/gamble_wand_t1_charging

execute store success score @s gamble_has_gold if items entity @s container.* gold_nugget
execute if score @s gamble_has_gold matches 0 run title @s actionbar {"text":"PAS DE SOUS!","color":"dark_red","bold":true}
execute if score @s gamble_has_gold matches 0 run return 0

# 3. On augmente la charge
scoreboard players add @s magic_wand.charge 1

# 4. Si chargé à fond (40 ticks), on lance le sort
execute if score @s magic_wand.charge matches 40.. run function wizardwand:gamblewand/t1/charged

execute store result score @s magic_wand.timestamp run time query gametime

schedule function wizardwand:gamblewand/t1/discharge_check 2t append

scoreboard players add @s magic_wand.timestamp 2


# Playsound
execute if score @s magic_wand.charge matches 0 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.5
execute if score @s magic_wand.charge matches 0 run playsound block.note_block.hat master @a ~ ~ ~ 1.0 1.0

execute if score @s magic_wand.charge matches 5 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.5
execute if score @s magic_wand.charge matches 5 run playsound block.note_block.hat master @a ~ ~ ~ 1.0 1.0

execute if score @s magic_wand.charge matches 10 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.5
execute if score @s magic_wand.charge matches 10 run playsound block.note_block.hat master @a ~ ~ ~ 1.0 1.0

execute if score @s magic_wand.charge matches 15 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.5
execute if score @s magic_wand.charge matches 15 run playsound block.note_block.hat master @a ~ ~ ~ 1.0 1.0

execute if score @s magic_wand.charge matches 20 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.5
execute if score @s magic_wand.charge matches 20 run playsound block.note_block.hat master @a ~ ~ ~ 1.0 1.0

execute if score @s magic_wand.charge matches 25 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.5
execute if score @s magic_wand.charge matches 25 run playsound block.note_block.hat master @a ~ ~ ~ 1.0 1.0

execute if score @s magic_wand.charge matches 30 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.5
execute if score @s magic_wand.charge matches 30 run playsound block.note_block.hat master @a ~ ~ ~ 1.0 1.0

execute if score @s magic_wand.charge matches 35 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.5
execute if score @s magic_wand.charge matches 35 run playsound block.note_block.hat master @a ~ ~ ~ 1.0 1.0

# Update the action bar
# On n'affiche les noms qui défilent QUE SI le temps de gel est terminé
execute if score @s gamble_freeze matches 0 run function wizardwand:gamblewand/t1/update_actionbar