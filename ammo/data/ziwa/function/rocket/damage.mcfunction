kill @e[type=marker,tag=rocket]
kill @e[type=block_display,tag=rocket]
execute as @e[distance=..2,type=!#arrows,type=!item_display,type=!block_display,type=!text_display,type=!item_frame,type=!glow_item_frame,type=!item] run damage @s 80 explosion
execute as @e[distance=2..6,type=!#arrows,type=!item_display,type=!block_display,type=!text_display,type=!item_frame,type=!glow_item_frame,type=!item] run damage @s 16 explosion
particle explosion ~ ~ ~ 1 1 1 0 16 force @a
particle flash ~ ~ ~ 0 0 0 0 2 force @a
playsound entity.generic.explode weather @a ~ ~ ~ 32 0.75
playsound item.firecharge.use weather @a ~ ~ ~ 8 0.75
tag @a remove rfire