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

execute as @s at @s if entity @e[type=!minecraft:tnt,limit=1,distance=0.001..10] as @e[type=!minecraft:tnt,dx=0,distance=..10] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] run data modify entity @e[type=minecraft:tnt,limit=1,sort=nearest,tag=elytra_bomber.motion_bomb] Fuse set value -1
