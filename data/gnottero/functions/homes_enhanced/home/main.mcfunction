# Main function of the home module.

    # Creating a new home if the player that is executing the commands has 0 homes set and if his "sethome" score is == 1 (and handling errors)
        execute if entity @s[tag=!gn.has_home,scores={sethome=1}] run function gnottero:homes_enhanced/home/set_home
        execute if entity @s[tag=gn.has_home,scores={sethome=1}] run function gnottero:homes_enhanced/home/set_home_error

    # Deleting the home if the player that is executing the command has at least 1 home and if his "delhome" score is == 1 (and handling errors)
        execute if entity @s[tag=gn.has_home,scores={delhome=1}] run function gnottero:homes_enhanced/home/del_home
        execute if entity @s[tag=!gn.has_home,scores={delhome=1}] run function gnottero:homes_enhanced/home/del_home_error

    # Teleporting the player to its home if his "home" score is == 1 and if he has an home set (and handling errors)
        execute if entity @s[tag=gn.has_home,scores={home=1}] run function gnottero:homes_enhanced/home/go_home/aec_to_pos
        execute if entity @s[tag=!gn.has_home,scores={home=1}] run function gnottero:homes_enhanced/home/home_error