#> Main function of the "gnottero:homes_enhanced/events/home_system/sethome/" folder. Handle all the events related to the sethome trigger
    #> Called by the "gnottero:homes_enhanced/events/main" function

    #> Check if the player already has an home and call the right function based on the result
        execute if entity @s[tag=gn.has_home] run tellraw @s {"text": "Home Enhanced#> You can set only 1 home", "color": "red"}
        execute if entity @s[tag=!gn.has_home] run function gnottero:homes_enhanced/events/home_system/sethome/create_home

    #> Reset and re-enable the trigger
        scoreboard players reset @s sethome
        scoreboard players enable @s sethome