#> Summon an area effect cloud that will be used to teleport the player to his home
    #> Called by various functions

    #> Add the "gn.go_home" tag to the executor
        tag @s add gn.tp_to_dest
    
    #> Summon the area effect cloud
        summon minecraft:area_effect_cloud ~ ~ ~ {Age: 0, Duration: 5, Tags: ["gn.tp_to_dest","global.ignore","global.ignore.pos","global.ignore.kill"],Particle:"block air"}

    #> Teleport the area effect cloud to the right dimension
        execute if score @s home matches 1.. run function gnottero:homes_enhanced/events/tp_to_destination/get_home_coordinates
        execute if score @s back matches 1.. run function gnottero:homes_enhanced/events/tp_to_destination/get_death_point_coordinates
        execute as @e[type=minecraft:armor_stand, tag=gn.dimension_marker] if score @s gn.dest_info = #gn.destination_dim gn.dest_info at @s run tp @e[type=minecraft:area_effect_cloud, limit=1, sort=nearest, tag=gn.tp_to_dest] ~ ~ ~

    #> Call the "gnottero:homes_enhanced/events/tp_to_destination/aec_to_destination" function
        execute as @e[type=minecraft:area_effect_cloud, limit=1, tag=gn.tp_to_dest] run function gnottero:homes_enhanced/events/tp_to_destination/aec_to_destination

    #> Remove the "gn.tp_to_dest" tag from the executor and reset the "gn.dest_info" value
        tag @s remove gn.tp_to_dest
