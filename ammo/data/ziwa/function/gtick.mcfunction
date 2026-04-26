# pistol
execute as @a if score @s rclick matches 1.. if score @s gtime matches 0 if score @s ammo_pistol matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:1}] run function ziwa:pistol/main
execute as @a if items entity @s weapon.offhand carrot_on_a_stick[custom_data={ziwagun:1}] if score @s gtime matches 0 run function ziwa:pistol/reload
execute as @a if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:1}] run title @s actionbar [{text:"Ammo: "},{score:{objective:"ammo_pistol",name:"@s"},color:gold},{text:"/12",color:gold}]

# mp
execute as @a if score @s rclick matches 1.. if score @s gtime matches 0 if score @s ammo_mp matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:2}] run function ziwa:mp/main
execute as @a if items entity @s weapon.offhand carrot_on_a_stick[custom_data={ziwagun:2}] if score @s gtime matches 0 run function ziwa:mp/reload
execute as @a if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:2}] run title @s actionbar [{text:"Ammo: "},{score:{objective:"ammo_mp",name:"@s"},color:gold},{text:"/30",color:gold}]

# shot
execute as @a if score @s rclick matches 1.. if score @s gtime matches 0 if score @s ammo_shot matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:3}] run function ziwa:shot/main
execute as @a if items entity @s weapon.offhand carrot_on_a_stick[custom_data={ziwagun:3}] if score @s gtime matches 0 run function ziwa:shot/reload
execute as @a if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:3}] run title @s actionbar [{text:"Ammo: "},{score:{objective:"ammo_shot",name:"@s"},color:gold},{text:"/8",color:gold}]

execute as @a run scoreboard players set @s rclick 0
execute as @a if score @s gtime matches 1.. run scoreboard players remove @s gtime 1
execute as @a if items entity @s weapon.offhand * run function ziwa:offhand