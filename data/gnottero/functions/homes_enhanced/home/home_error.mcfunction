# Error Handler for the home function

    # Sending a tellraw to tell that and error has occurred
        tellraw @s {"text":"You don't have any home set","color":"red","italic":false,"bold":false}

    # Resetting the score and re-enabling the trigger
        scoreboard players reset @s home
        scoreboard players enable @s home