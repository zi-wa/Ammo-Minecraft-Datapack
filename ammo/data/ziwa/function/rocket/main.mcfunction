execute positioned as @s run playsound minecraft:entity.firework_rocket.launch weather @a ~ ~1 ~ 8 .75
execute positioned as @s run playsound minecraft:block.lever.click weather @a ~ ~1 ~ 1 0.75
execute positioned as @s anchored eyes rotated as @s positioned ^ ^ ^.5 run function ziwa:rocket/ray
scoreboard players set @s rec 0
execute rotated as @s run rotate @s ~ ~-1
scoreboard players set @s gtime 5
scoreboard players remove @s ammo_rocket 1
execute as @e[tag=gdamage] run tag @s remove gdamage