execute positioned as @s run playsound minecraft:entity.firework_rocket.blast weather @a ~ ~1 ~ 8 1
execute positioned as @s run playsound minecraft:entity.firework_rocket.large_blast weather @a ~ ~1 ~ 8 1.5
execute positioned as @s run playsound minecraft:block.iron.break weather @a ~ ~1 ~ 1 1.2

execute store result score @s grand run random value 0..5
execute if score @s grand matches 0..1 positioned as @s anchored eyes rotated as @s positioned ^ ^ ^.5 run function ziwa:mp/ray
execute if score @s grand matches 2 positioned as @s anchored eyes rotated as @s rotated ~ ~1 positioned ^ ^ ^.5 run function ziwa:mp/ray
execute if score @s grand matches 3 positioned as @s anchored eyes rotated as @s rotated ~ ~-1 positioned ^ ^ ^.5 run function ziwa:mp/ray
execute if score @s grand matches 4 positioned as @s anchored eyes rotated as @s rotated ~1 ~ positioned ^ ^ ^.5 run function ziwa:mp/ray
execute if score @s grand matches 5 positioned as @s anchored eyes rotated as @s rotated ~-1 ~ positioned ^ ^ ^.5 run function ziwa:mp/ray
scoreboard players set @s rec 0

execute store result score @s grand run random value 0..5
execute if score @s grand matches 0..1 rotated as @s run rotate @s ~ ~-3
execute if score @s grand matches 2 rotated as @s run rotate @s ~1 ~-2
execute if score @s grand matches 3 rotated as @s run rotate @s ~-1 ~-2
execute if score @s grand matches 4 rotated as @s run rotate @s ~2 ~-1
execute if score @s grand matches 5 rotated as @s run rotate @s ~-2 ~-1

scoreboard players set @s gtime 2
scoreboard players remove @s ammo_mp 1
execute as @e[tag=gdamage] run tag @s remove gdamage