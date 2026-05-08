data remove storage minecraft:playerid {selector:"@s"}
execute store result storage minecraft:playerid {selector:"@s"} int 1 run scoreboard players get #playercount world
scoreboard players add #playercount world 1