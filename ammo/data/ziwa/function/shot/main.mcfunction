execute positioned as @s run playsound entity.generic.explode weather @a ~ ~1 ~ 12 1.5
execute positioned as @s run playsound minecraft:entity.firework_rocket.large_blast weather @a ~ ~1 ~ 12 1.5
execute positioned as @s run playsound minecraft:block.piston.extend weather @a ~ ~1 ~ 1 0.75

execute positioned as @s anchored eyes rotated as @s positioned ^ ^ ^.5 run function ziwa:shot/ray
scoreboard players set @s rec 0
execute positioned as @s anchored eyes rotated as @s rotated ~ ~3 positioned ^ ^ ^.5 run function ziwa:shot/ray
scoreboard players set @s rec 0
execute positioned as @s anchored eyes rotated as @s rotated ~ ~-3 positioned ^ ^ ^.5 run function ziwa:shot/ray
scoreboard players set @s rec 0
execute positioned as @s anchored eyes rotated as @s rotated ~3 ~ positioned ^ ^ ^.5 run function ziwa:shot/ray
scoreboard players set @s rec 0
execute positioned as @s anchored eyes rotated as @s rotated ~-3 ~ positioned ^ ^ ^.5 run function ziwa:shot/ray
scoreboard players set @s rec 0

execute rotated as @s run rotate @s ~ ~-6

scoreboard players set @s gtime 15
scoreboard players remove @s ammo_shot 1
execute as @e[tag=gdamage,limit=5] run tag @s remove gdamage