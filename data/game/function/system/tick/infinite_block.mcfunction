scoreboard players add .CPS Game.Data 1
execute store result score .Attack.Mining Game.Data on attacker run data get entity @s SelectedItem.components.minecraft:custom_data.Mining_Level
execute store result score .Attack.Digging Game.Data on attacker run data get entity @s SelectedItem.components.minecraft:custom_data.Digging_Level
execute store result score .Attack.Logging Game.Data on attacker run data get entity @s SelectedItem.components.minecraft:custom_data.Logging_Level
execute if score .CPS Game.Info matches ..15 on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run function game:system/tick/internal4
execute on attacker unless entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound entity.player.hurt block @a ~ ~1 ~ 1 1 0
execute if score .Health Game.Data matches ..0 run function game:system/tick/internal5