#> Check if the player entered in a new dimension and if so register the dimension id
    #> Called by the "" advancement
    
    tellraw @s {"text": "[Event]#> Changed Dimension", "color": "gray"}

    #> Revoke the "gnottero:gnotteros_experiment/utils/changed_dimension" advancement
        advancement revoke @s only gnottero:homes_enhanced/utilities/player_changed_dimension

    #> Check if the dimension has a marker entity and if not register it
        execute unless entity @e[type=minecraft:armor_stand, tag=gn.dimension_marker, limit=1, x=0, y=0, z=0, distance=..1] run function gnottero:homes_enhanced/events/register_new_dim/register_dimension