execute positioned as @s run playsound block.vault.insert_item weather @a ~ ~1 ~ 1 1.5
scoreboard players set @s ammo_pistol 12
scoreboard players set @s gtime 20
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air