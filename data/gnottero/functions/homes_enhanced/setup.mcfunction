# Creating all the scoreboards that are need by the datapack

    # Home required scoreboards
        scoreboard objectives add gn.home_x dummy
        scoreboard objectives add gn.home_y dummy
        scoreboard objectives add gn.home_z dummy
        scoreboard objectives add gn.home_dim dummy
    
    # Home required triggers
        scoreboard objectives add home trigger
        scoreboard objectives add sethome trigger
        scoreboard objectives add delhome trigger


    # Death Point required scoreboards
        scoreboard objectives add gn.is_dead deathCount
        scoreboard objectives add gn.death_x dummy
        scoreboard objectives add gn.death_y dummy
        scoreboard objectives add gn.death_z dummy
        scoreboard objectives add gn.death_dim dummy

    # Death Point required trigger
        scoreboard objectives add back trigger


    # Enabling all the triggers
        scoreboard players enable @a sethome
        scoreboard players enable @a home
        scoreboard players enable @a delhome
        scoreboard players enable @a back

    # Creating a scoreboard to store players id and setting up a fake player
        scoreboard objectives add gn.id dummy
        scoreboard players set $created.id gn.id 1
        execute unless score $created.id gn.id matches 1 run scoreboard players set $next.id gn.id 0

    