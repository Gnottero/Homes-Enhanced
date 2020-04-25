# Assigning an id to the player that is equal to the current $next.id score value + 1, then chaning the scoreboard value for $next.id
    
    # Tagging the player
        tag @s add gn.has_id

    # Storing the value of $next.id score (gn.id) + 1 into the gn.id score of the player
        execute store result score @s gn.id run scoreboard players add $next.id gn.id 1
