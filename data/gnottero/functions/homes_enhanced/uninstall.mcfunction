#> This is the uninstall function

    #> Remove all the scoreboards
        scoreboard objectives remove gn.home_x
        scoreboard objectives remove gn.home_y
        scoreboard objectives remove gn.home_z
        scoreboard objectives remove gn.home_dim

        scoreboard objectives remove gn.dest_info

        scoreboard objectives remove gn.player_died
        scoreboard objectives remove gn.death_x
        scoreboard objectives remove gn.death_y
        scoreboard objectives remove gn.death_z
        scoreboard objectives remove gn.death_dim

    #> Remove all the triggers
        scoreboard objectives remove home
        scoreboard objectives remove sethome
        scoreboard objectives remove delhome
        scoreboard objectives remove back

    #> Remove all the armor stands markers
        kill @e[type=armor_stand, tag=gn.home_marker]

    #> Remove all the forceloaded chunks
        forceload remove all

    #> Disable the datapack
        datapack disable "file/Homes Enhanced"
        