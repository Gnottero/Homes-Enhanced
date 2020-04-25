# Setting the home to the current location by storing all the coordinates and the dimension into the right scoreboards

    # Storing the position and dimension
        execute store result score @s gn.home_x run data get entity @s Pos[0]
        execute store result score @s gn.home_y run data get entity @s Pos[1]
        execute store result score @s gn.home_z run data get entity @s Pos[2]
        execute store result score @s gn.home_dim run data get entity @s Dimension

    # Sending a tellraw to tell the player that the home was saved successfully
        tellraw @s {"text":"Home set to the current location successfully","color":"gray","italic":false,"bold":false}

    # Tagging the player that has set the home
        tag @s add gn.has_home
    
    # Resetting the score and re-enabling the trigger
        scoreboard players reset @s sethome
        scoreboard players enable @s sethome