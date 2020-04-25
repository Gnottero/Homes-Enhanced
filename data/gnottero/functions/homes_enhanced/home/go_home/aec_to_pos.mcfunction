# Summoning an area effect cloud, copying the executor home position into the Pos array of the aec and running the teleport function

    # Summoning the aec to the player current position
        summon minecraft:area_effect_cloud ~ ~ ~ {Age: 0, Duration: 5, Tags: ["gn.home","global.ignore"],Particle:"block air"}

    # Copying the executor gn.id value into the gn.id score of the aec to mark it, then adding the "gn.executor" tag to the executor
        scoreboard players operation @e[type=area_effect_cloud,tag=gn.home,limit=1,sort=nearest] gn.id = @s gn.id
        tag @s add gn.executor

    # Executing the teleportation function as the aec, if its gn.id value matches the player one
        execute as @e[type=area_effect_cloud,tag=gn.home,sort=nearest,limit=1] at @s run function gnottero:homes_enhanced/home/go_home/copy_pos

    # Remove the tag "gn.executor"
        tag @s remove gn.executor

    # Resetting the score and re-enabling the trigger
        scoreboard players reset @s home
        scoreboard players enable @s home