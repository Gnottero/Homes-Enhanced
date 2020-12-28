#> Main function of the "gnottero:homes_enhanced/events/home_system/home/" folder. Handle all the events related to the home trigger
    #> Called by the "gnottero:homes_enhanced/events/main" function

    #> Check if the player has an home and call the right function based on the result
        execute if entity @s[tag=!gn.has_home] run tellraw @s {"text": "Home Enhanced#> You don't have any home set", "color": "red"}
        execute if entity @s[tag=gn.has_home] run function gnottero:homes_enhanced/events/tp_to_destination/summon_aec

    #> Reset and re-enable the trigger
        scoreboard players reset @s home
        scoreboard players enable @s home