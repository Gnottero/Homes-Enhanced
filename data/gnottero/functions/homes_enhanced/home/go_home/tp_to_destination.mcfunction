# Teleporting the player to the aec coordinates, and changing the dimension basing on his scoreboard value
    # Teleporting the player to the home position
        tp @p @s

    # Teleporting the player to the right dimension
        execute as @a[tag=gn.executor] at @s run function gnottero:homes_enhanced/home/go_home/tp_to_dim
    
    # Killing the executor
        kill @s
