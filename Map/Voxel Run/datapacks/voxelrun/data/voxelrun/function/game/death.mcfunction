team join dead
tag @s remove acid_dying
scoreboard players reset @s acid_timer
gamemode spectator @s
clear @s
tp @s 0.5 41.00 0.5 0 0

execute store result score .die game run random value 1..8

execute if score .die game matches 1 run tellraw @a [{selector:"@s",color:"aqua"},{text:" burnt in acid",color:"green"}]
execute if score .die game matches 2 run tellraw @a [{selector:"@s",color:"aqua"},{text:" was allergic to acid",color:"green"}]
execute if score .die game matches 3 run tellraw @a [{selector:"@s",color:"aqua"},{text:" + acid = smoke",color:"green"}]
execute if score .die game matches 4 run tellraw @a [{selector:"@s",color:"aqua"},{text:" slipped and disintegrated",color:"green"}]
execute if score .die game matches 5 run tellraw @a [{selector:"@s",color:"aqua"},{text:" turned into bubbles",color:"green"}]
execute if score .die game matches 6 run tellraw @a [{selector:"@s",color:"aqua"},{text:" got cooked",color:"green"}]
execute if score .die game matches 7 run tellraw @a [{selector:"@s",color:"aqua"},{text:" turned into joker",color:"green"}]
execute if score .die game matches 8 run tellraw @a [{selector:"@s",color:"aqua"},{text:" couldn't handle a taste of acid",color:"green"}]