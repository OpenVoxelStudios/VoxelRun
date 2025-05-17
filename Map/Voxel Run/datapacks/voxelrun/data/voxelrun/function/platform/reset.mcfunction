execute if entity @s[type=player] as @e[tag=platform] at @s positioned ~ ~.5 ~ run function voxelrun:platform/reset
execute if entity @s[type=player] run return fail

function voxelrun:platform/modes/1