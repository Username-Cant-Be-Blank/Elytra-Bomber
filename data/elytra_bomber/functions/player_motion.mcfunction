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

execute store result score @p elytra_bomber.motion_x run data get entity @s Motion[0] 1000
execute store result score @p elytra_bomber.motion_y run data get entity @s Motion[1] 1000
execute store result score @p elytra_bomber.motion_z run data get entity @s Motion[2] 1000

execute as @e[type=minecraft:tnt,tag=elytra_bomber.bomb] at @s rotated as @p run function elytra_bomber:apply_bomb_motion
