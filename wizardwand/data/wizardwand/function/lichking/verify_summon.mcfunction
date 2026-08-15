# =========================================================================
# CONFIGURATION A : Axe X (Est-Ouest)
# =========================================================================
execute if block ~ ~ ~ zombie_head if block ~ ~-1 ~ diamond_block if block ~ ~-2 ~ diamond_block if block ~1 ~-1 ~ diamond_block if block ~-1 ~-1 ~ diamond_block run function wizardwand:lichking/summon_lich_king
execute if block ~ ~ ~ zombie_wall_head if block ~ ~-1 ~ diamond_block if block ~ ~-2 ~ diamond_block if block ~1 ~-1 ~ diamond_block if block ~-1 ~-1 ~ diamond_block run function wizardwand:lichking/summon_lich_king

# =========================================================================
# CONFIGURATION B : Axe Z (Nord-Sud)
# =========================================================================
execute if block ~ ~ ~ zombie_head if block ~ ~-1 ~ diamond_block if block ~ ~-2 ~ diamond_block if block ~ ~-1 ~1 diamond_block if block ~ ~-1 ~-1 diamond_block run function wizardwand:lichking/summon_lich_king
execute if block ~ ~ ~ zombie_wall_head if block ~ ~-1 ~ diamond_block if block ~ ~-2 ~ diamond_block if block ~ ~-1 ~1 diamond_block if block ~ ~-1 ~-1 diamond_block run function wizardwand:lichking/summon_lich_king