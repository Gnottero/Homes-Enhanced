#> Main function of the "gnottero:homes_enhanced/events/home_system/death_point/" folder. Handle all the events related to the back trigger
    #> Called by the "gnottero:homes_enhanced/events/main" function

    #> Check if the player already has an home and call the right function based on the result
        execute if entity @s[tag=!gn.can_go_back] run tellraw @s {"text": "Home Enhanced#> You can go to the death point only once", "color": "red"}
        execute if entity @s[tag=gn.can_go_back] run function gnottero:homes_enhanced/events/home_system/death_point/back_to_death_point

    #> Reset and re-enable the trigger
        scoreboard players reset @s back
        scoreboard players enable @s back