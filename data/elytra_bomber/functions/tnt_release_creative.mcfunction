#    Elytra-Bomber: A datapack they lets you air drop TNT from elytra in Minecraft 1.19 tested
#    Copyright (C) 2022 Pamela pancakehiatt@gmail.com
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

execute as @s at @s run summon minecraft:tnt ^ ^-1 ^0.8 {Fuse:80,Tags:["elytra_bomber.bomb"]}

playsound minecraft:item.flintandsteel.use ambient @s ~ ~ ~
playsound minecraft:entity.tnt.primed ambient @s ~ ~ ~

summon minecraft:chest_minecart ~ -80 ~ {NoGravity:1b,Tags:["elytra_bomber.flint_chest"]}
item replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=elytra_bomber.flint_chest] container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=elytra_bomber.flint_chest] container.0
kill @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=elytra_bomber.flint_chest]

execute as @s at @s run function elytra_bomber:player_motion
