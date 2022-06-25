execute as @s at @s run summon minecraft:tnt ^ ^-1 ^0.8 {Fuse:80,Tags:["elytra_bomber.bomb"]}

playsound minecraft:item.flintandsteel.use ambient @s ~ ~ ~
playsound minecraft:entity.tnt.primed ambient @s ~ ~ ~

summon minecraft:chest_minecart ~ -80 ~ {NoGravity:1b,Tags:["elytrabomber.flint_chest"]}
item replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=elytra_bomber.flint_chest] container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=elytra_bomber.flint_chest] container.0
kill @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=elytra_bomber.flint_chest]

clear @s minecraft:tnt 1
execute as @s at @s run function elytra_bomber:player_motion
