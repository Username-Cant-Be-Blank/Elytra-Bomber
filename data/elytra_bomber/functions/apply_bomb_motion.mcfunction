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

execute store result entity @s Motion[0] double 0.0015 run scoreboard players get @p elytra_bomber.motion_x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @p elytra_bomber.motion_y
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get @p elytra_bomber.motion_z

tag @s add elytra_bomber.motion_bomb
tag @s remove elytra_bomber.bomb
