execute positioned as @s anchored eyes rotated as @s positioned ^ ^ ^.5 run function ziwa:rocket/ray
scoreboard players set @s rec 0

execute as @e[tag=rbody,type=marker,limit=1] positioned as @s facing entity @e[tag=rtarget,type=marker,limit=1] eyes positioned ^ ^ ^-0.1 rotated as @s positioned ^ ^ ^-0.4 facing entity @s eyes run rotate @s ~ ~
execute as @e[tag=rbody,type=marker,limit=1] positioned as @s rotated as @s run tp @s ^ ^ ^0.5

execute as @e[tag=rbody,type=marker,limit=1] positioned as @s if entity @e[type=marker,tag=rtarget,limit=1,distance=..1] run function ziwa:rocket/damage
execute as @e[tag=rbody,type=marker,limit=1] positioned as @s unless block ~ ~ ~ #gunpass run function ziwa:rocket/damage

execute positioned as @e[tag=rtarget,type=marker] run particle dust{color:[1.000,0.000,0.000],scale:2} ~ ~ ~ 0 0 0 0 1 force @a
execute positioned as @e[tag=rbody,type=marker] run particle flame ~ ~ ~ 0 0 0 0 1 force @a
execute at @e[tag=rbody,type=marker] run tp @e[type=block_display,tag=robj] ^ ^ ^1 ~ ~
execute positioned as @e[tag=rbody,type=marker] run playsound block.note_block.bit weather @a ~ ~ ~ 2 1.5
execute unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ziwagun:4}] as @e[tag=rbody,type=marker,limit=1] positioned as @s run function ziwa:rocket/damage