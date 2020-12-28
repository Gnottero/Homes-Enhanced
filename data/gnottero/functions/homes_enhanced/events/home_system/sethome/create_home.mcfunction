#> Store the current xyz coordinates and get the dimension id from the marker entity
    #> Called by the "gnottero:homes_enhanced/events/home_system/sethome/main" function

    #> Get the coordinates and the dimension id
        execute store result score @s gn.home_x run data get entity @s Pos[0]
        execute store result score @s gn.home_y run data get entity @s Pos[1]
        execute store result score @s gn.home_z run data get entity @s Pos[2]
        execute store result score @s gn.home_dim run scoreboard players get @e[type=minecraft:armor_stand, tag=gn.dimension_marker, limit=1, x=0, y=0, z=0, distance=..1] gn.dest_info

    #> Add the "gn.has_home" tag to the executor
        tag @s add gn.has_home

    #> Send a tellraw to the player to tell him that the home was saved successfully
        tellraw @s {"text": "Home Enhanced#> Home set to the current location successfully", "color": "gray"}

