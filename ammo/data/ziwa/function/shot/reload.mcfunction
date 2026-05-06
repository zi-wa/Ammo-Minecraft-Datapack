execute positioned as @s run playsound minecraft:block.vault.reject_rewarded_player weather @a ~ ~1 ~ 1 1.2
execute positioned as @s run playsound minecraft:block.piston.extend weather @a ~ ~1 ~ 1 0.75
scoreboard players add @s ammo_shot 1
scoreboard players remove @s mag_shot 1
scoreboard players set @s gtime 5