#> Store the current xyz coordinates and get the dimension id from the marker entity
    #> Called by the "gnottero:homes_enhanced/events/main" function

    #> Get the coordinates and the dimension id
        execute store result score @s gn.death_x run data get entity @s Pos[0]
        execute store result score @s gn.death_y run data get entity @s Pos[1]
        execute store result score @s gn.death_z run data get entity @s Pos[2]
        execute store result score @s gn.death_dim run scoreboard players get @e[type=minecraft:armor_stand, tag=gn.dimension_marker, limit=1, x=0, y=0, z=0, distance=..1] gn.dest_info

    #> Add the "gn.has_home" tag to the executor
        tag @s add gn.can_go_back

    #> Send a tellraw to the player to tell him that the home was saved successfully
        tellraw @s [{"text":"\nHome Enhanced#> Do you want to go back to your last death point?\n","color":"gray"},{"text":"#> Teleport to death point\n","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport"}]},"clickEvent":{"action":"run_command","value":"/trigger back"}}]

    #> Reset the "gn.player_died" value
        scoreboard players reset @s gn.player_died

