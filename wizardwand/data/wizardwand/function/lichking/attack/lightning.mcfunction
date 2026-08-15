# Give immunity to the Lich King for a short duration to prevent him from dying during the lightning attack
effect give @e[tag=lich_king] minecraft:resistance 1 4 true

# Summon
summon minecraft:lightning_bolt ~ ~ ~

# Clean up
tag @a[tag=aimed_by_lich_king,distance=..32] remove aimed_by_lich_king
scoreboard players set @e[tag=lich_king] lich_attack_timer 0
kill @s