execute if score .CPS Game.Timers matches 1.. run scoreboard players remove .CPS Game.Timers 1
execute if score .CPS Game.Timers matches 0 run function game:system/tick/internal0
execute positioned 0 101 28 if score .Random Game.Data matches 1.. run function game:system/tick/internal1