execute as @a[nbt={FallFlying:1b}] if predicate elytra_bomber:holding_flintsteel_and_tnt unless entity @s[gamemode=creative] at @s run function elytra_bomber:tnt_release
