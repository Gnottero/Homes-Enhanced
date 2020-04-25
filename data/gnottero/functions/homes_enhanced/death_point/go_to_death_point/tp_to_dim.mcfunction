     # Teleporting the player to the correct dimension
        execute if score @s gn.death_dim matches -1 in the_nether run tp @s ~ ~ ~
        execute if score @s gn.death_dim matches 0 in overworld run tp @s ~ ~ ~
        execute if score @s gn.death_dim matches 1 in the_end run tp @s ~ ~ ~
        