tag @s add ball

summon marker ~ ~ ~ {Tags:["ball.marker","ball.new"]}
ride @e[tag=ball.new,limit=1,sort=nearest] mount @s
tag @e[tag=ball.new] remove ball.new