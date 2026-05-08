particle block_crumble{block_state:"redstone_block"} ~ ~ ~ 0.125 0.125 0.125 0.25 16 force @a
execute if entity @s[distance=..1.2] run damage @s 16 generic
execute if entity @s[distance=1.2..] run damage @s 32 generic