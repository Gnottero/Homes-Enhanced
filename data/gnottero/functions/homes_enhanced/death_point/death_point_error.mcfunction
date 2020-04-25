# Error Handler for the set_home function

    # Sending a tellraw to tell that and error has occurred
        tellraw @s {"text":"You can go to the death point only once","color":"red","italic":false,"bold":false}

    # Resetting the score and re-enabling the trigger
        scoreboard players reset @s back
        scoreboard players enable @s back