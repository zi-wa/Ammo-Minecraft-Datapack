particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s rec 1
execute as @e[dx=0,dy=0,dz=0,type=!#arrows,type=!item_display,type=!block_display,type=!text_display,type=!item_frame,type=!glow_item_frame,type=!item,limit=1] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] run tag @s add gdamage
execute as @e[tag=gdamage,limit=1] run function ziwa:pistol/damage
execute unless entity @e[tag=gdamage,limit=1] if score @s rec matches ..400 positioned ^ ^ ^.0625 if block ~ ~ ~ #gunpass run function ziwa:pistol/ray