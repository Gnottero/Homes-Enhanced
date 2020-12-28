#> Delete the currently stored home by resetting all the scoreboard values and removing the tag
    #> Called by the "gnottero:homes_enhanced/events/home_system/delhome/main" function

    #> Get the coordinates and the dimension id
        scoreboard players reset @s gn.home_x
        scoreboard players reset @s gn.home_y
        scoreboard players reset @s gn.home_z
        scoreboard players reset @s gn.home_dim

    #> Add the "gn.has_home" tag to the executor
        tag @s remove gn.has_home

    #> Send a tellraw to the player to tell him that the home was deleted successfully
        tellraw @s {"text": "Home Enhanced#> Your home has been deleted successfully", "color": "gray"}

