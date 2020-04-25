# Storing the player death point coordinates and dimension in the right scoreboards

    # Storing the position and dimension
        execute store result score @s gn.death_x run data get entity @s Pos[0]
        execute store result score @s gn.death_y run data get entity @s Pos[1]
        execute store result score @s gn.death_z run data get entity @s Pos[2]
        execute store result score @s gn.death_dim run data get entity @s Dimension

     # Sending a tellraw with a clickable text, that teleport the player to his death point
        tellraw @s [{"text":"Do you want to go back to your last Death Point?\n","color":"gray"},{"text":"> Go back\n","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger back"}},{"text":"> Delete Death Point\n","color":"yellow","clickEvent":{"action":"run_command","value":"/tag @s remove gn.can_go_back"}}]

    # Tagging the player
        tag @s add gn.can_go_back

    # Resetting his "gn.is_dead" scoreboard value
        scoreboard players reset @s gn.is_dead