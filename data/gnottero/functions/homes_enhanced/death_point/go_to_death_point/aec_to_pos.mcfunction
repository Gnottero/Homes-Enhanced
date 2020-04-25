# Summoning an area effect cloud, copying the executor_death home position into the Pos array of the aec and running the teleport function

    # Summoning the aec to the player current position
        summon minecraft:area_effect_cloud ~ ~ ~ {Age: 0, Duration: 5, Tags: ["gn.death_point","global.ignore"],Particle:"block air"}
        tag @s add global.ignore

    # Copying the executor_death gn.id value into the gn.id score of the aec to mark it, then adding the "gn.executor_death" tag to the executor_death
        scoreboard players operation @e[type=area_effect_cloud,tag=gn.death_point,limit=1,sort=nearest] gn.id = @s gn.id
        tag @s add gn.executor_death

    # Executing the teleportation function as the aec, if its gn.id value matches the player one
        execute as @e[type=area_effect_cloud,tag=gn.death_point,sort=nearest,limit=1] at @s run function gnottero:homes_enhanced/death_point/go_to_death_point/copy_pos

    # Remove all players tags
        tag @s remove gn.can_go_back
        tag @s remove gn.executor_death
        tag @s remove global.ignore

    # Resetting the score and re-enabling the trigger
        scoreboard players reset @s back
        scoreboard players enable @s back