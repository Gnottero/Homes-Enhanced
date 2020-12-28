#> Event handler of the events folder. Call core functions when required
    #> Called by the "gnottero:homes_enhanced/main" function

    #> Call the right function based on which condition is met
        execute if score @s sethome matches 1.. run function gnottero:homes_enhanced/events/home_system/sethome/main
        execute if score @s delhome matches 1.. run function gnottero:homes_enhanced/events/home_system/delhome/main
        execute if score @s home matches 1.. run function gnottero:homes_enhanced/events/home_system/home/main
        execute if score @s gn.player_died matches 1.. run function gnottero:homes_enhanced/events/home_system/death_point/create_death_point
        execute if score @s back matches 1.. run function gnottero:homes_enhanced/events/home_system/death_point/main