tellraw @a [{text:"Game Resources Reloaded!"}]
kill @e[tag=Game.Restart_Remove]
summon interaction 0 101 28 {height:1.05,width:1.1, Tags:["Game.Restart_Remove"], data:{ Data:{RightClick_InteractionName:"",LeftClick_InteractionName:"tick/infinite_block"}}}
scoreboard objectives add Game.Timers dummy
scoreboard objectives add Game.Math dummy
scoreboard objectives add Game.Data dummy
scoreboard objectives add Game.Info dummy
execute unless score .SetHealth Game.Data matches -2147483648..2147483647 run scoreboard players set .SetHealth Game.Data 10
execute unless score .Health Game.Data matches -2147483648..2147483647 run scoreboard players set .Health Game.Data 10
scoreboard players set .Special Game.Data 50
scoreboard players set .CPS Game.Timers 20