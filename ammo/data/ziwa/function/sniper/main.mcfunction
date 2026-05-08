execute positioned as @s run playsound entity.generic.explode weather @a ~ ~1 ~ 8 1.8
execute positioned as @s run playsound minecraft:block.iron_trapdoor.close weather @a ~ ~1 ~ 1 1
execute positioned as @s anchored eyes rotated as @s positioned ^ ^ ^.5 run function ziwa:sniper/ray
scoreboard players set @s rec 0
execute rotated as @s run rotate @s ~ ~-3
scoreboard players set @s gtime 30
scoreboard players remove @s ammo_sniper 1
execute as @e[tag=gdamage,limit=1] run tag @s remove gdamage