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

execute as @s store result score @s elytra_bomber.motion_y run data get entity @s Motion[1] 1000
execute as @s at @s if score @s elytra_bomber.motion_y matches 0 unless block ~ ~ ~ water run data modify entity @s Fuse set value -1

execute as @s store result score @s elytra_bomber.motion_x run data get entity @s Motion[0] 1000
execute as @s at @s rotated as @a if score @s elytra_bomber.motion_x matches 0 unless block ^ ^ ^1 air unless block ~ ~ ~ water run data modify entity @s Fuse set value -1

execute as @s store result score @s elytra_bomber.motion_z run data get entity @s Motion[2] 1000
execute as @s at @s rotated as @a if score @s elytra_bomber.motion_z matches 0 unless block ^ ^ ^1 air unless block ~ ~ ~ water run data modify entity @s Fuse set value -1
