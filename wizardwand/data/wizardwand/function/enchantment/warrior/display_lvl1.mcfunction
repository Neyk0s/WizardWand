# --- PHASE DE CHARGE (3 segments) ---
execute if score @s warrior_timer matches -1 if score @s warrior_streak matches 1 run title @s actionbar ["",{"text":"Rage: ","color":"gray"},{"text":"[","color":"white"},{"text":"■","color":"red"},{"text":"□□","color":"dark_gray"},{"text":"]","color":"white"}]
execute if score @s warrior_timer matches -1 if score @s warrior_streak matches 2 run title @s actionbar ["",{"text":"Rage: ","color":"gray"},{"text":"[","color":"white"},{"text":"■■","color":"red"},{"text":"□","color":"dark_gray"},{"text":"]","color":"white"}]

# --- PHASE DE FRÉNÉSIE (Jauge de temps qui se vide) ---
# On affiche une barre dorée pendant le buff de 5s
execute if score @s warrior_timer matches 80..100 run title @s actionbar {"text":"[■■■■■] ⚔ ENRAGÉ ⚔","color":"gold","bold":true}
execute if score @s warrior_timer matches 60..79 run title @s actionbar {"text":"[■■■■□] ⚔ ENRAGÉ ⚔","color":"gold","bold":true}
execute if score @s warrior_timer matches 40..59 run title @s actionbar {"text":"[■■■□□] ⚔ ENRAGÉ ⚔","color":"gold","bold":true}
execute if score @s warrior_timer matches 20..39 run title @s actionbar {"text":"[■■□□□] ⚔ ENRAGÉ ⚔","color":"gold","bold":true}
execute if score @s warrior_timer matches 1..19 run title @s actionbar {"text":"[■□□□□] ⚔ ENRAGÉ ⚔","color":"red","bold":true}