# Error Handler for the del_home function

    # Sending a tellraw to tell the player that the home was saved successfully
        tellraw @s {"text":"You don't have any home set","color":"red","italic":false,"bold":false}
    
    # Resetting the score and re-enabling the trigger
        scoreboard players reset @s delhome
        scoreboard players enable @s delhome