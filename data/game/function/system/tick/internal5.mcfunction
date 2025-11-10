playsound entity.zombie.attack_iron_door block @a ~ ~1 ~ 1 1 0
scoreboard players operation .Health Game.Data = .SetHealth Game.Data
execute if block ~ ~ ~ stone on attacker run give @s cobblestone
execute if block ~ ~ ~ cobblestone on attacker run give @s cobblestone
execute store result score .Random Game.Data run random value 1..100