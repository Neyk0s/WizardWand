#Update the action bar
execute as @s[scores={magic_wand.charge=0}] run return run title @s actionbar [{"text":"----", "color":"red"}]

execute as @s[scores={magic_wand.charge=1..8}] run return run title @s actionbar [{"text":"-", "color":"green"},{"text":"---", "color":"red"}]

execute as @s[scores={magic_wand.charge=9..16}] run return run title @s actionbar [{"text":"--", "color":"green"},{"text":"--", "color":"red"}]

execute as @s[scores={magic_wand.charge=17..25}] run return run title @s actionbar [{"text":"---", "color":"green"},{"text":"-", "color":"red"}]

execute as @s[scores={magic_wand.charge=26..32}] run return run title @s actionbar [{"text":"----", "color":"green"}]