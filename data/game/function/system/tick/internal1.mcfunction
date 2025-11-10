execute if score .Random Game.Data > .Special Game.Data run function game:system/tick/internal2
execute if score .Random Game.Data <= .Special Game.Data run function game:system/tick/internal3
scoreboard players set .Random Game.Data 0