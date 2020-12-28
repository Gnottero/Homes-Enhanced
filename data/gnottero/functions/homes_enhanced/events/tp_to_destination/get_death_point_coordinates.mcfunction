#> Get the coordinates and dimension id and store them in a temporary variable
    #> Called by the "gnottero:homes_enhanced/events/tp_to_destination/summon_aec" function

    #> Store the coordinates and dimension id
        execute store result score #gn.destination_x gn.dest_info run scoreboard players get @s gn.death_x
        execute store result score #gn.destination_y gn.dest_info run scoreboard players get @s gn.death_y
        execute store result score #gn.destination_z gn.dest_info run scoreboard players get @s gn.death_z
        execute store result score #gn.destination_dim gn.dest_info run scoreboard players get @s gn.death_dim