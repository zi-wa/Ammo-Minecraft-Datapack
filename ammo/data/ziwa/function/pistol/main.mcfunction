execute positioned as @s run playsound minecraft:entity.firework_rocket.blast weather @a ~ ~1 ~ 4 .75
execute positioned as @s run playsound minecraft:block.iron_trapdoor.close weather @a ~ ~1 ~ 1 1.2
execute positioned as @s anchored eyes rotated as @s positioned ^ ^ ^.5 run function ziwa:pistol/ray
scoreboard players set @s rec 0
execute rotated as @s run rotate @s ~ ~-1
scoreboard players set @s gtime 5
scoreboard players remove @s ammo_pistol 1
execute as @e[tag=gdamage,limit=1] run tag @s remove gdamage