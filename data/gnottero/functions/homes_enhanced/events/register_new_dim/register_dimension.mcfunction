#> Forceload the 0 0 chunk and register the new dimension id
    #> Called by the "" function

    #> Forceload the 0 0 chunk
        forceload add 0 0

    #> Summon the marker armor stand
        summon minecraft:armor_stand 0 0 0 {Invisible:1b, Marker:1b, Tags:["gn.home_marker","gn.dimension_marker", "gn.new_dimension", "global.ignore", "global.ignore.pos", "global.ignore.kill"]}

    #> Register the id of the new dimension
        execute store result score @e[type=minecraft:armor_stand, tag=gn.new_dimension, limit=1] gn.dest_info run scoreboard players add #gn.dest_infos gn.dest_info 1

    #> Remove the "gn.new_dimension" tag from the marker entity
        tag @e[type=minecraft:armor_stand, tag=gn.new_dimension, limit=1] remove gn.new_dimension