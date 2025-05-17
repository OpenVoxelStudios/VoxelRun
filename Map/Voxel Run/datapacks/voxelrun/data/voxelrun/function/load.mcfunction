scoreboard objectives add platform dummy
scoreboard objectives add lobby dummy
scoreboard objectives add game dummy
scoreboard objectives add cooldown.launch dummy
scoreboard objectives add launch.uses dummy
scoreboard objectives add acid_timer dummy
scoreboard objectives add leaderboard dummy
scoreboard objectives add leaderboard.display dummy

scoreboard objectives add leave minecraft.custom:minecraft.leave_game

scoreboard objectives add config dummy
execute unless score disappear_time config matches -2147483648..2147483647 run scoreboard players set disappear_time config 35

team add alive
team add lobby
team add dead

team modify alive color green
team modify lobby color gray
team modify dead color red

team modify alive friendlyFire false
team modify lobby friendlyFire false
team modify dead friendlyFire false

execute as @e[tag=aj.logo.root] run function animated_java:logo/animations/loop/tween {to_frame:0,duration:10}

tellraw @a [{"text":"[","color":"yellow"},{"text":"VoxelRun","color":"aqua"},{"text":"]","color":"yellow"},{"text":" Reloaded Successfully","color":"green"}]