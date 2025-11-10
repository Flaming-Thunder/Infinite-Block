execute if score .CPS Game.Timers matches 1.. run scoreboard players remove .CPS Game.Timers 1
execute if score .CPS Game.Timers matches 0 run
  scoreboard players set .CPS Game.Timers 20
  scoreboard players operation .CPS Game.Info = .CPS Game.Data
  scoreboard players set .CPS Game.Data 0

execute positioned 0 101 28 if score .Random Game.Data matches 1.. run
  execute if score .Random Game.Data > .Special Game.Data run
    setblock ~ ~ ~ cobblestone
    scoreboard players set .SetHealth Game.Data 10
  execute if score .Random Game.Data <= .Special Game.Data run
    setblock ~ ~ ~ stone
    scoreboard players set .SetHealth Game.Data 5
  scoreboard players set .Random Game.Data 0

/infinite_block
  scoreboard players add .CPS Game.Data 1
  execute store result score .Attack.Mining Game.Data on attacker run data get entity @s SelectedItem.components.minecraft:custom_data.Mining_Level
  execute store result score .Attack.Digging Game.Data on attacker run data get entity @s SelectedItem.components.minecraft:custom_data.Digging_Level
  execute store result score .Attack.Logging Game.Data on attacker run data get entity @s SelectedItem.components.minecraft:custom_data.Logging_Level
  
  execute if score .CPS Game.Info matches ..15 on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run
    particle block{block_state:stone} ~ ~.5 ~ 0.3 0.3 0.3 0 10
    playsound block.stone.break block @a ~ ~1 ~ 1 1 0
    scoreboard players operation .Health Game.Data -= .Attack.Mining Game.Data
  execute on attacker unless entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound entity.player.hurt block @a ~ ~1 ~ 1 1 0
    

  execute if score .Health Game.Data matches ..0 run
    playsound entity.zombie.attack_iron_door block @a ~ ~1 ~ 1 1 0
    scoreboard players operation .Health Game.Data = .SetHealth Game.Data
    execute if block ~ ~ ~ stone on attacker run give @s cobblestone
    execute if block ~ ~ ~ cobblestone on attacker run give @s cobblestone

    execute store result score .Random Game.Data run random value 1..100
    