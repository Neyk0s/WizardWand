execute store result score @s gamble_display run random value 0..2

execute if score @s gamble_display matches 0 run title @s actionbar {"text":"[ JACKPOT SUMMON! ]","color":"gold","bold":true}

execute if score @s gamble_display matches 1 run title @s actionbar {"text":"[ JACKPOT BUFF! ]","color":"gold","bold":true}

execute if score @s gamble_display matches 2 run title @s actionbar {"text":"[ JACKPOT SHOT! ]","color":"gold","bold":true}

