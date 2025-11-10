execute if score Scene.Start Game.Timers matches 200 run function game:system/anim/internal1
tellraw @a [{score:{objective:Game.Timers,name:"Scene.Start"}}]
scoreboard players remove Scene.Start Game.Timers 1