# sound
execute positioned as @s run playsound minecraft:block.lever.click weather @a ~ ~1 ~ 1 0.75

# summon rocket, target marker
execute positioned as @s anchored eyes rotated as @s positioned ^ ^ ^.5 run function ziwa:rocket/summon
tag @s add rfire

# reset
scoreboard players set @s rec 0
scoreboard players set @s gtime 10
scoreboard players remove @s ammo_rocket 1