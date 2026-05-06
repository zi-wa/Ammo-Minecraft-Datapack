# pistol
execute as @a if score @s rclick matches 1.. if score @s gtime matches 0 if score @s ammo_pistol matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:1}] run function ziwa:pistol/main
execute as @a if items entity @s weapon.offhand carrot_on_a_stick[custom_data={ziwagun:1}] unless score @s mag_pistol matches ..0 unless score @s ammo_pistol matches 12.. if score @s gtime matches 0 run function ziwa:pistol/reload
execute as @a if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:1}] run title @s actionbar [{text:"Ammo: "},{score:{objective:"ammo_pistol",name:"@s"},color:gold},{text:"/",color:gold},{score:{objective:"mag_pistol",name:"@s"},color:gold}]
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:1}] run scoreboard players add @s mag_pistol 1
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:1}] run clear @s minecraft:paper[custom_data={ziwaammo:1}] 1
execute as @a if score @s mag_pistol matches 16.. run scoreboard players set @s mag_pistol 16

# mp
execute as @a[advancements={rclick=true}] if score @s gtime matches 0 if score @s ammo_mp matches 1.. if items entity @s weapon.mainhand crossbow[custom_data={ziwagun:2}] run function ziwa:mp/main
execute as @a if items entity @s weapon.offhand crossbow[custom_data={ziwagun:2}] unless score @s mag_mp matches ..0 unless score @s ammo_mp matches 30.. if score @s gtime matches 0 run function ziwa:mp/reload
execute as @a if items entity @s weapon.mainhand crossbow[custom_data={ziwagun:2}] run title @s actionbar [{text:"Ammo: "},{score:{objective:"ammo_mp",name:"@s"},color:gold},{text:"/",color:gold},{score:{objective:"mag_mp",name:"@s"},color:gold}]
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:2}] run scoreboard players add @s mag_mp 1
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:2}] run clear @s minecraft:paper[custom_data={ziwaammo:2}] 1
execute as @a if score @s mag_mp matches 8.. run scoreboard players set @s mag_mp 8

# shot
execute as @a if score @s rclick matches 1.. if score @s gtime matches 0 if score @s ammo_shot matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:3}] run function ziwa:shot/main
execute as @a if items entity @s weapon.offhand carrot_on_a_stick[custom_data={ziwagun:3}] unless score @s mag_shot matches ..0 unless score @s ammo_shot matches 8.. if score @s gtime matches 0 run function ziwa:shot/reload
execute as @a if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:3}] run title @s actionbar [{text:"Ammo: "},{score:{objective:"ammo_shot",name:"@s"},color:gold},{text:"/",color:gold},{score:{objective:"mag_shot",name:"@s"},color:gold}]
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:3}] run scoreboard players add @s mag_shot 1
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:3}] run clear @s minecraft:paper[custom_data={ziwaammo:3}] 1
execute as @a if score @s mag_shot matches 64.. run scoreboard players set @s mag_shot 64

#rocket
execute as @a unless entity @a[tag=rfire,limit=1] if score @s rclick matches 1.. if score @s gtime matches 0 if score @s ammo_rocket matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:4}] run function ziwa:rocket/main
execute as @a[tag=rfire,limit=1] run function ziwa:rocket/tick
execute as @a if items entity @s weapon.offhand carrot_on_a_stick[custom_data={ziwagun:4}] unless score @s mag_rocket matches ..0 unless score @s ammo_rocket matches 1.. if score @s gtime matches 0 run function ziwa:rocket/reload
execute as @a if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:4}] run title @s actionbar [{text:"Ammo: "},{score:{objective:"ammo_rocket",name:"@s"},color:gold},{text:"/",color:gold},{score:{objective:"mag_rocket",name:"@s"},color:gold}]
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:4}] run scoreboard players add @s mag_rocket 1
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:4}] run clear @s minecraft:paper[custom_data={ziwaammo:4}] 1
execute as @a if score @s mag_rocket matches 4.. run scoreboard players set @s mag_rocket 4

#sniper
execute as @a if items entity @s weapon.offhand spyglass[custom_data={ziwagun:5}] unless score @s ammo_sniper matches ..0 if score @s gtime matches 0 run function ziwa:sniper/main
execute as @a if items entity @s weapon.mainhand spyglass[custom_data={ziwagun:5}] run title @s actionbar [{text:"Ammo: "},{score:{objective:"ammo_sniper",name:"@s"},color:gold},{text:"/",color:gold},{score:{objective:"mag_sniper",name:"@s"},color:gold}]
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:5}] run scoreboard players add @s mag_sniper 1
execute as @a if items entity @s container.* minecraft:paper[custom_data={ziwaammo:5}] run clear @s minecraft:paper[custom_data={ziwaammo:5}] 1
execute as @a if score @s mag_sniper matches 16.. run scoreboard players set @s mag_sniper 16
execute as @a if score @s ammo_sniper matches 0 if score @s mag_sniper matches 1.. run function ziwa:sniper/reload

#tick
execute as @a if score @s rclick matches 1.. run scoreboard players set @s rclick 0
execute as @a[advancements={rclick=true}] run advancement revoke @s only rclick
execute as @a if score @s gtime matches 1.. run scoreboard players remove @s gtime 1
execute as @a if items entity @s weapon.offhand * run function ziwa:offhand
execute as @e[type=block_display,tag=bullet_hole] run scoreboard players add @s gtime 1
execute as @e[type=block_display,tag=bullet_hole] if score @s gtime matches 200.. run kill @s
execute as @a run clear @s arrow
execute as @a run item replace entity @s inventory.0 with arrow[tooltip_display={hide_tooltip:true}]