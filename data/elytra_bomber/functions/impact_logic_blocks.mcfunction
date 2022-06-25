execute as @s store result score @s elytra_bomber.motion_y run data get entity @s Motion[1] 1000
execute as @s at @s if score @s elytra_bomber.motion_y matches 0 unless block ~ ~ ~ water run data modify entity @s Fuse set value -1

execute as @s store result score @s elytra_bomber.motion_x run data get entity @s Motion[0] 1000
execute as @s at @s rotated as @a if score @s elytra_bomber.motion_x matches 0 unless block ^ ^ ^1 air unless block ~ ~ ~ water run data modify entity @s Fuse set value -1

execute as @s store result score @s elytra_bomber.motion_z run data get entity @s Motion[2] 1000
execute as @s at @s rotated as @a if score @s elytra_bomber.motion_z matches 0 unless block ^ ^ ^1 air unless block ~ ~ ~ water run data modify entity @s Fuse set value -1
