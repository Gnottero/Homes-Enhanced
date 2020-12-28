#> Teleport the player to the area effect cloud
    #> Called by the "gnottero:homes_enhanced/events/tp_to_destination/summon_aec" function

    #> Store destination coordinates inside the area effect cloud Pos
        execute store result entity @s Pos[0] double 1 run scoreboard players get #gn.destination_x gn.dest_info 
        execute store result entity @s Pos[1] double 1 run scoreboard players get #gn.destination_y gn.dest_info 
        execute store result entity @s Pos[2] double 1 run scoreboard players get #gn.destination_z gn.dest_info 

    #> Teleport the player to the executor
        execute at @s run tp @a[tag=!global.ignore.pos, tag=gn.tp_to_dest, limit=1] ~ ~ ~
    
    #> Kill the executor
        kill @s