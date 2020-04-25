# Deleting the home and resetting all the scoreboards values

    # Resetting scoreboards values
        scoreboard players reset @s gn.home_x
        scoreboard players reset @s gn.home_y
        scoreboard players reset @s gn.home_z
        scoreboard players reset @s gn.home_dim

    # Sending a tellraw to tell the player that the home was saved successfully
        tellraw @s {"text":"Your home has been deleted successfully","color":"gray","italic":false,"bold":false}

    # Removing the "gn.has_home" tag from the executor
        tag @s remove gn.has_home
    
    # Resetting the score and re-enabling the trigger
        scoreboard players reset @s delhome
        scoreboard players enable @s delhome