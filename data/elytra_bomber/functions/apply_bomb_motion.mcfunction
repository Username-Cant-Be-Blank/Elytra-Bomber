execute store result entity @s Motion[0] double 0.0015 run scoreboard players get @p elytra_bomber.motion_x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @p elytra_bomber.motion_y
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get @p elytra_bomber.motion_z

tag @s add elytra_bomber.motion_bomb
tag @s remove elytra_bomber.bomb
