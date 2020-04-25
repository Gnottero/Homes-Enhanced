# Saving the player's home position in the aec Pos array

    # Storing all the scoreboards values into the Pos array
        execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=gn.executor,limit=1] gn.home_x
        execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=gn.executor,limit=1] gn.home_y
        execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=gn.executor,limit=1] gn.home_z

    # Running the teleportation function
        function gnottero:homes_enhanced/home/go_home/tp_to_destination