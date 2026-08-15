tellraw @a [{"text":"<","color":"#0059b3","font":"minecraft:default"},{"text":"Philippe","color":"#0059b3","font":"minecraft:alt"},{"text":"> ","color":"#0059b3","font":"minecraft:default"},{"translate":"id.dialogue.lichking.phase_2","color":"#cce6ff","font":"minecraft:default"}]


# Add tag to play only once the summoning of the cavaliers
tag @s add triggered_cavaliers

# Sounds
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 0.8

# Summons
summon skeleton_horse ~-3 ~ ~2 {Tags:["lich_minion"],Passengers:[{id:"minecraft:wither_skeleton",Tags:["lich_minion"],CustomName:{text:"Mort",color:"dark_red","font":"minecraft:alt"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:iron_sword",count:1},chest:{id:"minecraft:netherite_chestplate",count:1},head:{id:"minecraft:netherite_helmet",count:1}}}]}
summon skeleton_horse ~3 ~ ~2 {Tags:["lich_minion"],Passengers:[{id:"minecraft:skeleton",Tags:["lich_minion"],CustomName:{text:"Guerre",color:"red","font":"minecraft:alt"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:iron_axe",count:1},chest:{id:"minecraft:iron_chestplate",count:1},head:{id:"minecraft:iron_helmet",count:1}}}]}
summon skeleton_horse ~-3 ~ ~-2 {Tags:["lich_minion"],Passengers:[{id:"minecraft:stray",Tags:["lich_minion"],CustomName:{text:"Famine",color:"gold","font":"minecraft:alt"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:bow",count:1},chest:{id:"minecraft:golden_chestplate",count:1},head:{id:"minecraft:golden_helmet",count:1}}}]}
summon skeleton_horse ~3 ~ ~-2 {Tags:["lich_minion"],Passengers:[{id:"minecraft:bogged",Tags:["lich_minion"],CustomName:{text:"Peste",color:"green","font":"minecraft:alt"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:bow",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:chainmail_helmet",count:1}}}]}