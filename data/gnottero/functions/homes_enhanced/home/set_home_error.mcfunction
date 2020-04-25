# Error Handler for the set_home function

    # Sending a tellraw to tell that and error has occurred
        tellraw @s {"text":"You can set only 1 home","color":"red","italic":false,"bold":false}

    # Resetting the score and re-enabling the trigger
        scoreboard players reset @s sethome
        scoreboard players enable @s sethome