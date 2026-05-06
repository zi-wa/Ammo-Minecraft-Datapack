#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s rec 1
execute as @e[tag=rtemp,limit=1] run tag @s remove rtemp

# entity collision
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,dy=0,dz=0,type=!#arrows,type=!item_display,type=!block_display,type=!text_display,type=!item_frame,type=!glow_item_frame,type=!item,limit=1] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0,dy=0,dz=0] run tag @s add rtemp
tag @s remove rtemp
execute as @e[type=marker,tag=rtarget,limit=1] run tag @s remove rtemp
execute as @e[type=marker,tag=rbody,limit=1] run tag @s remove rtemp
execute if entity @e[tag=rtemp,limit=1] run tp @e[type=marker,tag=rtarget,limit=1] ~ ~ ~

# rec limit
execute unless entity @e[tag=rtemp,limit=1] if score @s rec matches 400 run tp @e[type=marker,tag=rtarget,limit=1] ~ ~ ~

# block collision
execute unless entity @e[tag=rtemp,limit=1] unless block ^ ^ ^.125 #gunpass run tp @e[type=marker,tag=rtarget,limit=1] ~ ~ ~

# recursion
execute unless entity @e[tag=rtemp,limit=1] if score @s rec matches ..399 positioned ^ ^ ^.125 if block ~ ~ ~ #gunpass run function ziwa:rocket/ray
