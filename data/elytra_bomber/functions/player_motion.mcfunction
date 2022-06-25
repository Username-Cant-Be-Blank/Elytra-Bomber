execute store result score @p elytra_bomber.motion_x run data get entity @s Motion[0] 1000
execute store result score @p elytra_bomber.motion_y run data get entity @s Motion[1] 1000
execute store result score @p elytra_bomber.motion_z run data get entity @s Motion[2] 1000

execute as @e[type=minecraft:tnt,tag=elytra_bomber.bomb] at @s rotated as @p run function elytra_bomber:apply_bomb_motion
