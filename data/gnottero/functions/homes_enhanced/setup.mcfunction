#> This function will run on datapack loading

    #> Initialize all the scoreboards
        scoreboard objectives add gn.home_x dummy
        scoreboard objectives add gn.home_y dummy
        scoreboard objectives add gn.home_z dummy
        scoreboard objectives add gn.home_dim dummy

        scoreboard objectives add gn.dest_info dummy

        scoreboard objectives add gn.player_died deathCount
        scoreboard objectives add gn.death_x dummy
        scoreboard objectives add gn.death_y dummy
        scoreboard objectives add gn.death_z dummy
        scoreboard objectives add gn.death_dim dummy

    #> Initialize all the triggers
        scoreboard objectives add home trigger
        scoreboard objectives add sethome trigger
        scoreboard objectives add delhome trigger
        scoreboard objectives add back trigger

    #> Enable all the triggers
        scoreboard players enable @a sethome
        scoreboard players enable @a home
        scoreboard players enable @a delhome
        scoreboard players enable @a back
    
    #> Call the "gnottero:homes_enhanced/events/register_new_dim/check_dimension" function
        function gnottero:homes_enhanced/events/register_new_dim/check_dimension