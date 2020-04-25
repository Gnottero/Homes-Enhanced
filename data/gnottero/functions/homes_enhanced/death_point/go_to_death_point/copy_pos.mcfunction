# Saving the player's home position in the aec Pos array

    # Storing all the scoreboards values into the Pos array
        execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=gn.executor_death,limit=1] gn.death_x
        execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=gn.executor_death,limit=1] gn.death_y
        execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=gn.executor_death,limit=1] gn.death_z

    # Running the teleportation function
        function gnottero:homes_enhanced/death_point/go_to_death_point/tp_to_destination