scoreboard objectives add rclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add gtime dummy
scoreboard objectives add ammo_pistol dummy
scoreboard objectives add ammo_mp dummy
scoreboard objectives add ammo_shot dummy
scoreboard objectives add ammo_rocket dummy
scoreboard objectives add rec dummy
scoreboard objectives add grand dummy
execute as @a run scoreboard players set @s gtime 0
execute as @a run scoreboard players set @s ammo_pistol 12
execute as @a run scoreboard players set @s ammo_mp 30
execute as @a run scoreboard players set @s ammo_shot 8
execute as @a run scoreboard players set @s ammo_rocket 1
execute as @a run scoreboard players set @s rec 0