# Main function of the deat_point module.

    # When the player dies, save his death point in the right scoreboards
        execute if score @s gn.is_dead matches 1 run function gnottero:homes_enhanced/death_point/create_death_point

    # Teleporting the player to its home if his "back" score is == 1 and if he has an home set (and handling errors)
        execute if entity @s[tag=gn.can_go_back,scores={back=1}] run function gnottero:homes_enhanced/death_point/go_to_death_point/aec_to_pos
        execute if entity @s[tag=!gn.can_go_back,scores={back=1}] run function gnottero:homes_enhanced/death_point/death_point_error
