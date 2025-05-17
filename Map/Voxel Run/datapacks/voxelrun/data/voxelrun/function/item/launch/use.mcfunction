advancement revoke @s only voxelrun:launch

execute if score start_timer game matches 1.. run return fail
execute if score @s cooldown.launch matches 1.. run return fail
scoreboard players set @s cooldown.launch 100

scoreboard players set $strength player_motion.api.launch 14000
function player_motion:api/launch_looking
playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~

execute if items entity @s weapon minecraft:ender_eye[custom_data={launch:true},minecraft:count=1] run return run item replace entity @s weapon with flint[item_model="minecraft:barrier",custom_name=[{"text":"No Uses Left","color":"red","italic":false}],custom_data={launch:true}]
clear @s minecraft:ender_eye[custom_data={launch:true}] 1