# Executing all the cores functions

    # Assigning an id to every player on the first entrance in the world
        execute as @a[tag=!gn.has_id] run function gnottero:homes_enhanced/assign_id

    # Executing as every player the main function of the home module
        execute as @a[tag=!global.ignore,tag=!global.ignore.pos] at @s run function gnottero:homes_enhanced/home/main

    # Executing as every player the main function of the death_point module
        execute as @a[tag=!global.ignore,tag=!global.ignore.pos] at @s run function gnottero:homes_enhanced/death_point/main