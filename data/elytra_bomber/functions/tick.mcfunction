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

execute as @a[nbt={FallFlying:1b}] if predicate elytra_bomber:holding_flintsteel_and_tnt unless entity @s[gamemode=creative] at @s run function elytra_bomber:tnt_release
