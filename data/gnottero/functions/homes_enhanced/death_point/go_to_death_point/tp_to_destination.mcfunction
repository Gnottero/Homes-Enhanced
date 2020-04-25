# Teleporting the player to the aec coordinates, and changing the dimension basing on his scoreboard value
    # Teleporting the player to the home position
        tp @p @s

    # Teleporting the player to the right dimension
        execute as @a[tag=gn.executor_death] at @s run function gnottero:homes_enhanced/death_point/go_to_death_point/tp_to_dim
    
    # Killing the executor
        kill @s
