execute if score Scene.Start Game.Timers matches 1.. run
  execute if score Scene.Start Game.Timers matches 200 run
    loot give @a loot game:game/tools/forgotten_pickaxe
  tellraw @a [{score:{objective:Game.Timers,name:"Scene.Start"}}]

  scoreboard players remove Scene.Start Game.Timers 1
